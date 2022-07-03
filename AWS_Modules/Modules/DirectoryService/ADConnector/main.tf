# AD Connector
resource "aws_directory_service_directory" "adconnector" {
  name     = var.domain_name
  password = data.aws_ssm_parameter.adconnect.value
  size     = var.ad_size
  type     = var.ad_type

  connect_settings {
    customer_dns_ips  = var.customer_dns_ips
    customer_username = var.customer_username
    subnet_ids        = var.subnet_ids
    vpc_id            = var.vpc_id
  }
}

# Workspaces Directory
resource "aws_workspaces_directory" "workspace_adconnector" {
  directory_id = aws_directory_service_directory.adconnector.id
  subnet_ids   = var.subnet_ids

  tags = merge(local.common_tags, { Name = "${var.tag_name}-Workspace_ADConnector" })

  self_service_permissions {
    change_compute_type  = false
    increase_volume_size = false
    rebuild_workspace    = false
    restart_workspace    = true
    switch_running_mode  = false
  }

  workspace_access_properties {
    device_type_android    = "ALLOW"
    device_type_chromeos   = "ALLOW"
    device_type_ios        = "ALLOW"
    device_type_osx        = "ALLOW"
    device_type_web        = "ALLOW"
    device_type_windows    = "ALLOW"
    device_type_zeroclient = "ALLOW"
  }

  workspace_creation_properties {
    custom_security_group_id            = var.sg_id
    default_ou                          = var.default_ou
    enable_internet_access              = false
    enable_maintenance_mode             = false
    user_enabled_as_local_administrator = false
  }

  ip_group_ids = var.ip_group_ids

}

resource "null_resource" "ad_mfa" {
  provisioner "local-exec" {
    command = "aws ds enable-radius --directory-id ${aws_directory_service_directory.adconnector.id} --radius-settings=RadiusServers=10.64.64.81,RadiusPort=1812,RadiusTimeout=50,RadiusRetries=5,SharedSecret=aklhsd93lSKE*3dKIo,AuthenticationProtocol=PAP,DisplayLabel=MFA"
  }
}
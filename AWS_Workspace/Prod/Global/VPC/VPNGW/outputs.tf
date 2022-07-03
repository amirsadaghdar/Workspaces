# Outputs VPN GW

output "vpc_gw" {
  value = module.vpn_gw.aws_vpngw_id
}
# Data

data "terraform_remote_state" "vpn_gw" {
  backend = "s3"
  config = {
    bucket = "tf-state-files-workspace-prod"
    key    = "apps/vpc/vpngw/terraform.tfstate"
    region = "eu-west-1"
  }
}
locals {
  vgw_id = data.terraform_remote_state.vpn_gw.outputs["vpc_gw"]
}

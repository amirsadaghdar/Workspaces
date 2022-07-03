# Providers
provider "aws" {

  region  = var.region
  profile = "security"
}

# Module
module "s3backend" {
  source          = "../../../../AWS_Modules/Modules/S3/S3Backend"
  region          = var.region
  aws_bucket_name = var.aws_bucket_name
  aws_dynamo_db   = var.aws_dynamo_db
  tag_name        = var.tag_name
  tag_application = var.tag_application
  tag_owner       = var.tag_owner
  tag_costcenter  = var.tag_costcenter
  tag_managedby   = var.tag_managedby
}

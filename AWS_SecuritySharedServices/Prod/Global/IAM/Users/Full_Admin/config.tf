# Terraform Version
terraform {
  required_version = "~> 0.13.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Backend Config
terraform {
  backend "s3" {
    bucket         = "tf-state-files-infra-prod"
    key            = "global/iam/users/full_admin/terraform.tfstate"
    region         = "eu-west-1"
    profile        = "production"
    dynamodb_table = "tf-state-locks-infra-prod"
    encrypt        = true
  }
}

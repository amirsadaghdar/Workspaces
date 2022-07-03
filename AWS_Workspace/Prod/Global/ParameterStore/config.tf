# Terraform Version
terraform {
  required_version = "~> 0.14.5"

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
    bucket         = "tf-state-files-workspace-prod"
    key            = "global/parameterstore/terraform.tfstate"
    region         = "eu-west-1"
    profile        = "workspace"
    dynamodb_table = "tf-state-locks-workspace-prod"
    encrypt        = true
  }
}

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
    bucket         = "tf-state-files-security-prod"
    key            = "global/vpc/transitgateway/terraform.tfstate"
    region         = "eu-west-1"
    profile        = "security"
    dynamodb_table = "tf-state-locks-security-prod"
    encrypt        = true
  }
}

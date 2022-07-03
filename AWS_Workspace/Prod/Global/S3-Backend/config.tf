terraform {
  required_version = "~> 0.13.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}


terraform {
  backend "s3" {
    bucket         = "tf-state-files-workspace-prod"
    key            = "global/s3/backend/terraform.tfstate"
    region         = "eu-west-1"
    profile        = "workspace"
    dynamodb_table = "tf-state-locks-workspace-prod"
    encrypt        = true
  }
}

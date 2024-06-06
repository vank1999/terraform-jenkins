terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = var.region
}

#terraform s3 backend
terraform {
  backend "s3" {
    bucket = "ak-s3-terraform"
    key    = "terraform.tfstate"
    region = var.region
  }
}



terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.12.0"
    }
  }
}

# Configure the providers

provider "aws" {
  region  = "us-west-2"
  profile = "default"
}
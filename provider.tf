terraform {
  cloud {

    organization = "02-spring-cloud"

    workspaces {
      name = "aws-workspace-ec2"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}
provider "aws" {
  region = "us-east-1"
}
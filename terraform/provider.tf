terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.50.0"
    }
  }
  backend "s3" {
    bucket = "vukyvky"
    region = "us-east-1"
    key = "terraform-statefiles"
    use_lockfile = true
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}
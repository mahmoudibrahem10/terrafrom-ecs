provider "aws" {
  region  = "us-east-1"
  version = "~> 3.73.0"
}

data "terraform_remote_state" "vpc" {
backend = "s3" 
  config = {

    bucket = "myecsterabucket123"
    key    = "last/terraform.tfstate"
    region = "us-east-1"
    }
      }

terraform {
  backend "s3" {
    bucket = "myecsterabucket123"
    key    = "last2/terraform.tfstate"
    region = "us-east-1"
  }
}
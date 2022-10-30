provider "aws" {
  region  = "us-east-1"
  version = "~> 3.73.0"
}


terraform {
  backend "s3" {
    bucket = "myecsterabucket123"
    key    = "last/terraform.tfstate"
    region = "us-east-1"
  }
}
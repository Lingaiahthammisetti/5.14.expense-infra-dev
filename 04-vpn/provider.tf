terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.58.0"
    }
  }
backend "s3" {
  bucket = "expense-infra-dev-rs"
  key = "expense-infra-dev-vpn"
  region = "us-east-1"
  dynamodb_table="expense-infra-dev-locking"
}
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}


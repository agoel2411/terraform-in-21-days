terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket         = "terraform-remote-state-ashishgoel"
    key            = "level2.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-remote-state"
  }  
}

provider "aws" {
  region = "us-east-1"
}

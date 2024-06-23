terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.0"
    }

    consul = {
      source = "hashicorp/consul"
      version = "~> 2.0"
    }
  }
}

provider "consul" {}

provider "aws" {
  region = "us-east-1"
}

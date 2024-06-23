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

provider "consul" {
  address = "http://10.0.0.120:8500"
}

provider "aws" {
  region = "us-east-1"
  default_tags {
    tags = {
      terraform = true
    }
  }
}

terraform {

  cloud {
    workspaces {
      name = "learn-terraform-snow-sgc"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.58.0"
    }
  }

  required_version = ">= 1.3.0"
}
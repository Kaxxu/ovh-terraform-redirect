terraform {
  required_version = "1.5.5"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 5.11.0"
    }

    ovh = {
      source  = "ovh/ovh"
      version = "0.32.0"
    }
  }

  backend "s3" {
    bucket               = "terraform-state-kaxxu"
    key                  = "ovh/ovh-redirect.tfstate"
    workspace_key_prefix = "ovh"
    region               = "eu-west-1"
  }
}

provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Name        = var.name
      Environment = var.environment
      Repo        = "GitHub/Kaxxu/terraform-ovh-redirect"
      Workspace   = terraform.workspace
    }
  }
}

provider "ovh" {}

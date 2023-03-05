terraform {
  required_version = "1.3.9"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 4.27.0"
    }

    ovh = {
      source  = "ovh/ovh"
      version = "= 0.28.1"
    }
  }

  cloud {
    organization = "Yutani"

    workspaces {
      tags = ["ovh-redirects"]
    }
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Name        = var.name
      Environment = var.environment
      Repo        = "GitHub/Kaxxu/terraform-ovh-redirect"
      Workspace   = var.TFC_WORKSPACE_SLUG
    }
  }
}

provider "ovh" {}

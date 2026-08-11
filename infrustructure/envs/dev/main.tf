terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "af-south-1"

  default_tags {
    tags = local.tags
  }
}

resource "aws_s3_bucket" "tags_standards_bucket_resource" {
  bucket = "aws-aws-skillsbuilder-rerun-again"
}

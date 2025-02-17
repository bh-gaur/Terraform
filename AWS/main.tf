terraform {
  backend "s3" {}

  required_version = "0.14.7"

  required_providers {
    aws = {

        source = "hashicorp/aws"

        version = "~>3.71"
    }
  }
}

provider "aws" {
    region = var.region
}

resource "aws_iam_role" "source-datasync-role" {
    name = var.name
    assume_role_policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [{
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "datasync.amazonaws.com"
      }
    }]
  })
}

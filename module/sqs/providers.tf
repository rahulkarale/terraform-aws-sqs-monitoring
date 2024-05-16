terraform {
  required_version = ">= 0.12"
}

provider "aws" {
  assume_role {
    role_arn = var.aws_assume_role_arn
  }
}

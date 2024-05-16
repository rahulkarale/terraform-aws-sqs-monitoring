remote_state {
  backend = "s3"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    bucket         = "dev-infra-delete-me-terraform-state"
    key            = "dev/${path_relative_to_include()}/terraform.tfstate"
    region         = "ap-south-1" # Mumbai
    encrypt        = true
    dynamodb_table = "dev-infra-delete-me-terraform-state"

    dynamodb_table_tags = {
      name                       = "dev-infra-terraform-state-lock"
      team                       = "devops"
      environment                = "dev"
    }
    s3_bucket_tags = {
      name                       = "dev-infra-delete-me-terraform-state"
      team                       = "devops"
      environment                = "dev"
    }
  }
}

terraform {
  extra_arguments "crud" {
    commands = [
      "init",
      "apply",
      "destroy",
      "refresh",
      "import",
      "plan",
      "taint",
      "untaint"
    ]

    arguments = [
      "-lock-timeout=1m",
      "-input=false"
    ]

    env_vars = {
      AWS_DEFAULT_REGION = "ap-south-1"
    }
  }
}
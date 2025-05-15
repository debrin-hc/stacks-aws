
required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 5.23.0"
  }
}

provider "aws" "configurations" {
  config {
    region = var.region

    # access_key = var.access_key
    # secret_key = var.secret_key
    # token      = var.session_token

    # assume_role_with_web_identity {
    #   role_arn           = var.role_arn
    #   web_identity_token = var.identity_token
    # }

    access_key = var.access_key
    secret_key = var.secret_key
    token      = var.session_token

    # default_tags {
    #   tags = var.default_tags
    # }
  }
}


component "ssm" {
  source = "./ssm"

  inputs = {
    region       = var.region
    # default_tags = var.default_tags
  }

  providers = {
    aws = provider.aws.configurations
  }
}

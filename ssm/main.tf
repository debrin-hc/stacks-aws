resource "aws_ssm_parameter" "example" { 
  name        = "/example/app/api_key"
  description = "API key for example app"
  type        = "SecureString"
  value       = "REPLACE_WITH_SECRET_VALUE"
  key_id      = "alias/aws/ssm"

  tags = var.default_tags
}

variable "default_tags" {
  description = "A map of default tags to apply to all AWS resources"
  type        = map(string)
  default = {
    "name" = "value"
  }
}
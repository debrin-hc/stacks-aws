output "ssm_id" {
  description = "The ID of ssm"
  value = aws_ssm_parameter.example.id
}

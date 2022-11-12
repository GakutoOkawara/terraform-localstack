resource "aws_ssm_parameter" "sample_key" {
  name = "SAMPLE_KEY"
  type = "SecureString"
  value = var.sample_key
}
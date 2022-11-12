resource "aws_sfn_state_machine" "based" {
  name = var.state_machine_name
  role_arn = aws_iam_role.sfn_execution_role.arn
  definition = var.state_machine_definition
}


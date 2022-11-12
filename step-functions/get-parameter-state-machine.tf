module "get_parameter_state_machine" {
  source = "./base/"

  state_machine_name = "get-parameter-state-machine"
  state_machine_definition = <<EOF
{
  "StartAt": "GetParameter",
  "States": {
    "GetParameter": {
      "Type": "Task",
      "Parameters": {
        "Names": ["SAMPLE_KEY"],
        "WithDecryption": true
      },
      "Resource": "arn:aws:states:::aws-sdk:ssm:getParameters",
      "ResultSelector": {
        "ssm-parameters.$": "$.Parameters"
      },
      "End": true
    }
  }
}
EOF
}
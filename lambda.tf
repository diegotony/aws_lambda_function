
locals {
  environment_variables = { foo = "bar" }
  tags = {template = "tf-modules", service = "lambda"}
  layers = []
}

resource "aws_lambda_function" "this" {
  function_name = var.function_name
  filename      = data.archive_file.zip.output_path
  role          = aws_iam_role.lambda_exec.arn
  runtime       = var.runtime
  handler       = var.handler
  layers        = merge(local.layers) 

  environment {
    variables = merge(var.environment_variables, local.environment_variables)
  }

  tags = merge(var.tags, local.tags)

}


locals {
  environment_variables = {}
  tags                  = { template = "tf-modules", service = "lambda" }
  layers                = []
  description           = ""
}

resource "aws_lambda_function" "this" {
  function_name = var.function_name
  filename      = data.archive_file.zip.output_path
  role          = aws_iam_role.lambda_exec.arn
  runtime       = var.runtime
  handler       = var.handler
  layers        = var.layers == tolist([""]) ? merge(var.layers, local.layers) : null
  description   = format("%s | %s | %s", var.description, local.description, "${var.function_name}")
  architectures = var.architectures
  image_uri     = var.image_uri == null ? null : var.image_uri
  memory_size   = var.memory_size
  package_type  = var.package_type
  timeout       = var.timeout

  environment {
    variables = var.environment_variables == tolist([""]) ? merge(var.environment_variables, local.environment_variables) : null
  }

  tags = merge(var.tags, local.tags)

}

resource "aws_cloudwatch_log_group" "hello_world" {
  name = "/aws/lambda/${aws_lambda_function.this.function_name}"
  retention_in_days = 30
}
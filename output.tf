output "function_name" {
  description = "Name of the Lambda function."

  value = aws_lambda_function.this.function_name
}

output "lambda_exec_name" {
  value = aws_iam_role.lambda_exec.name
}

output "lambda_arn" {
  value = aws_lambda_function.this.arn
}

output "lambda_function_name" {
  value = aws_lambda_function.this.function_name
}
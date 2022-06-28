resource "aws_cloudwatch_log_group" "this" {
  name              = "/aws/lambda/${aws_lambda_function.this.function_name}"
  retention_in_days = 30
}

resource "aws_cloudwatch_event_rule" "this" {
  count = var.cloudwatch_event_rule ? 1 : 0
  name                = var.cloudwatch_event_rule != null "warm-${var.function_name}"
  description         = "Fires every ${var.rate}"
  schedule_expression = "rate(${var.rate})"
}

resource "aws_cloudwatch_event_target" "this" {
  count = var.cloudwatch_event_rule ? 1 : 0
  rule      = aws_cloudwatch_event_rule.this.name
  target_id = "${var.function_name}-target-id"
  arn       = aws_lambda_function.this.arn
}

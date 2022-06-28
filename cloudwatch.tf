locals {
  enabled_cloudwatch_event_rule = var.schedule_expression==""? false : true
}

resource "aws_cloudwatch_log_group" "this" {
  name              = "/aws/lambda/${aws_lambda_function.this.function_name}"
  retention_in_days = 30
}

resource "aws_cloudwatch_event_rule" "this" {
  count               = local.enabled_cloudwatch_event_rule  ? 1 : 0
  name                = "warm-${var.function_name}"
  description         = "Fires ${var.schedule_expression}"
  schedule_expression = var.schedule_expression
}

resource "aws_lambda_permission" "this" {
  count         = local.enabled_cloudwatch_event_rule ? 1 : 0
  statement_id  = "AllowExecutionFromCloudWatch"
  action        = "lambda:InvokeFunction"
  function_name = var.function_name
  principal     = "events.amazonaws.com"
  source_arn    = aws_cloudwatch_event_rule.this[0].arn
    depends_on = [
    aws_cloudwatch_event_rule.this  ]
}

resource "aws_cloudwatch_event_target" "this" {
  count     = local.enabled_cloudwatch_event_rule  ? 1 : 0
  rule      = aws_cloudwatch_event_rule.this[0].name
  target_id = "${var.function_name}-target-id"
  arn       = aws_lambda_function.this.arn
  depends_on = [
    aws_cloudwatch_event_rule.this
  ]
}


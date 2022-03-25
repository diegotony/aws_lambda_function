resource "aws_lambda_event_source_mapping" "sqs" {
  count            = length(var.list_sqs_event_source)
  event_source_arn = var.list_sqs_event_source[count.index].event_source_arn
  function_name    = aws_lambda_function.this.arn
  enabled          = var.list_sqs_event_source[count.index].enabled
  filter_criteria {
    filter {
      pattern = var.list_sqs_event_source[count.index].pattern
    }
  }
}


resource "aws_lambda_event_source_mapping" "sqs" {
  count             = length(var.list_dynamodb_event_source)
  event_source_arn  = var.list_dynamodb_event_source[count.index].event_source_arn
  function_name     = aws_lambda_function.this.arn
  enabled           = var.list_dynamodb_event_source[count.index].enabled
  starting_position = var.list_dynamodb_event_source[count.index].starting_position
}

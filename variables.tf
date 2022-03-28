variable "source_dir" {
  type        = string
  description = "source dir"
}

variable "function_name" {
  type        = string
  description = "function name"
}

variable "runtime" {
  type        = string
  description = "runtime"
}

variable "handler" {
  type        = string
  description = "handler"
}

variable "environment_variables" {
  type = list(object({
    variables = map(string)
  }))
  default = [{
    variables = {
      foo   = "bar"
      perro = "gato"
    }
  }]
}

variable "layers" {
  type        = list(string)
  default     = []
  description = "(optional) describe your variable"
}

variable "description" {
  type        = string
  description = "(optional) describe your variable"
}

variable "architectures" {
  type        = list(string)
  default     = ["x86_64"]
  description = "(optional) describe your variable"
}

variable "image_uri" {
  type        = string
  default     = null
  description = "(optional) describe your variable"
}

variable "memory_size" {
  type        = string
  default     = 128
  description = "(optional) describe your variable"
}

variable "package_type" {
  type        = string
  default     = "Zip"
  description = "(optional) describe your variable"
}

variable "timeout" {
  type        = string
  default     = 3
  description = "(optional) describe your variable"
}

variable "tags" {
  type = map(any)
  default = {
    "service" = "lambda"
  }
  description = "tags"
}

variable "policies" {
  type        = list(string)
  default     = []
  description = "The policies"
}

variable "list_sqs_event_source" {
  default = []
  type = list(object({
    batch_size       = string
    event_source_arn = string
    enabled          = bool
    pattern          = string
  }))
  description = "List Event Queues queues"
}

variable "list_dynamodb_event_source" {
  default = []
  type = list(object({
    batch_size        = string
    event_source_arn  = string
    enabled           = bool
    starting_position = string
  }))
  description = "List Event Queues queues"
}


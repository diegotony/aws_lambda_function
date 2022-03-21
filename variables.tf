variable "source_dir" {
  type        = string
  default     = ""
  description = "source dir"
}

variable "function_name" {
  type        = string
  description = "function name"
}

variable "runtime" {
  type        = string
  default     = ""
  description = "runtime"
}

variable "handler" {
  type        = string
  default     = ""
  description = "handler"
}

variable "environment_variables" {
  type        = map(any)
  default     = {}
  description = "(optional) describe your variable"
}

variable "layers" {
  type        = list(string)
  default     = []
  description = "(optional) describe your variable"
}

variable "description" {
  type        = string
  default     = ""
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
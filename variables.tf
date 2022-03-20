variable "source_dir" {
    type = string
    description = "source dir"
}

variable "function_name" {
    type = string
    description = "function name"
}

variable "runtime" {
    type = string
    description = "runtime"
}

variable "handler" {
    type = string
    description = "handler"
}

variable "environment_variables" {
    type = map
    default = {
        "abra" = "kadabra"
    }
    description = "(optional) describe your variable"
}

variable "layers" {
    type = any
    default = [""]
    description = "(optional) describe your variable"
}

variable "tags" {
    type = map
    default = {
        "service" = "lambda"
    }
    description = "tags"
}
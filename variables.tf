variable "source_dir" {
    type = string
    description = "source dir"
}

variable "output_path" {
    type = string
    description = "output path"
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
    type = any()
    description = "(optional) describe your variable"
}

variable "layers" {
    type = any()
    description = "(optional) describe your variable"
}
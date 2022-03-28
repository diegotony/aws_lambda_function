# aws_lambda_function
<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_archive"></a> [archive](#provider\_archive) | 2.2.0 |
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.6.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_cloudwatch_log_group.hello_world](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_log_group) | resource |
| [aws_iam_role.lambda_exec](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.attach_iam_policy_to_iam_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.lambda_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_lambda_event_source_mapping.dnyamodb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping) | resource |
| [aws_lambda_event_source_mapping.sqs](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_event_source_mapping) | resource |
| [aws_lambda_function.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lambda_function) | resource |
| [archive_file.zip](https://registry.terraform.io/providers/hashicorp/archive/latest/docs/data-sources/file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | (optional) describe your variable | `string` | n/a | yes |
| <a name="input_function_name"></a> [function\_name](#input\_function\_name) | function name | `string` | n/a | yes |
| <a name="input_handler"></a> [handler](#input\_handler) | handler | `string` | n/a | yes |
| <a name="input_runtime"></a> [runtime](#input\_runtime) | runtime | `string` | n/a | yes |
| <a name="input_source_dir"></a> [source\_dir](#input\_source\_dir) | source dir | `string` | n/a | yes |
| <a name="input_architectures"></a> [architectures](#input\_architectures) | (optional) describe your variable | `list(string)` | <pre>[<br>  "x86_64"<br>]</pre> | no |
| <a name="input_environment_variables"></a> [environment\_variables](#input\_environment\_variables) | n/a | <pre>list(object({<br>    variables = map(string)<br>  }))</pre> | <pre>[<br>  {<br>    "variables": {<br>      "foo": "bar",<br>      "perro": "gato"<br>    }<br>  }<br>]</pre> | no |
| <a name="input_image_uri"></a> [image\_uri](#input\_image\_uri) | (optional) describe your variable | `string` | `null` | no |
| <a name="input_layers"></a> [layers](#input\_layers) | (optional) describe your variable | `list(string)` | `[]` | no |
| <a name="input_list_dynamodb_event_source"></a> [list\_dynamodb\_event\_source](#input\_list\_dynamodb\_event\_source) | List Event Queues queues | <pre>list(object({<br>    batch_size        = string<br>    event_source_arn  = string<br>    enabled           = bool<br>    starting_position = string<br>  }))</pre> | `[]` | no |
| <a name="input_list_sqs_event_source"></a> [list\_sqs\_event\_source](#input\_list\_sqs\_event\_source) | List Event Queues queues | <pre>list(object({<br>    batch_size       = string<br>    event_source_arn = string<br>    enabled          = bool<br>    pattern          = string<br>  }))</pre> | `[]` | no |
| <a name="input_memory_size"></a> [memory\_size](#input\_memory\_size) | (optional) describe your variable | `string` | `128` | no |
| <a name="input_package_type"></a> [package\_type](#input\_package\_type) | (optional) describe your variable | `string` | `"Zip"` | no |
| <a name="input_policies"></a> [policies](#input\_policies) | The policies | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | tags | `map(any)` | <pre>{<br>  "service": "lambda"<br>}</pre> | no |
| <a name="input_timeout"></a> [timeout](#input\_timeout) | (optional) describe your variable | `string` | `3` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_function_name"></a> [function\_name](#output\_function\_name) | Name of the Lambda function. |
<!-- END_TF_DOCS -->
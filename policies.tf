resource "aws_iam_role_policy_attachment" "attach_iam_policy_to_iam_role" {
 count = length(var.policies)
 role        = aws_iam_role.lambda_exec.name
 policy_arn  = var.policies[count.index]
}

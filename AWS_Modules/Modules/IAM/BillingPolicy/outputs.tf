# Output data

output "billing_policy_arn" {
  value = aws_iam_policy.billing_policy.id
}

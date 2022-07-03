# Output data

output "mfa_policy_arn" {
  value = aws_iam_policy.mfa_policy.id
}

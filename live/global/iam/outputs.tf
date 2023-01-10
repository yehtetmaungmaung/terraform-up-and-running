output "user_arn" {
  value       = values(module.users)[*].user_arn
  description = "The ARN of the created IAM users"
}
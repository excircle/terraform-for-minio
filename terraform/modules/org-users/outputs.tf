output "users" {
  description = "Names of the created MinIO IAM users"
  value       = keys(minio_iam_user.user)
}

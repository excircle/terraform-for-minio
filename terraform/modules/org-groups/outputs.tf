output "group_name" {
  value = minio_iam_group.group[var.group_name].name
}
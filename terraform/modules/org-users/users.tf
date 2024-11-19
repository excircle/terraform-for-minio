resource "minio_iam_user" "user" {
  for_each = toset(var.users)
  name = each.key
}

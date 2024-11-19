resource "minio_iam_group" "group" {
  for_each = toset([var.group_name])
  name = each.key
}

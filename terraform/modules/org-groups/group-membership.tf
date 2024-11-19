resource "minio_iam_group_membership" "members" {
  name = "org-membership"

  users = toset(var.users)

  group = minio_iam_group.group[var.group_name].name
}
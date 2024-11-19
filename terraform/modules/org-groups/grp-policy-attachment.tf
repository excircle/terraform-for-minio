resource "minio_iam_group_policy_attachment" "attachment" {
  depends_on = [ 
    minio_iam_group.group,
    minio_iam_policy.policy
  ]
  for_each = tomap(minio_iam_policy.policy)

  group_name  = minio_iam_group.group[var.group_name].name
  policy_name = each.value.name
}

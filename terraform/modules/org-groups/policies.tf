resource "minio_iam_policy" "policy" {
  for_each = { for policy in var.policies : policy.name => policy }

  name   = each.value.name
  policy = each.value.policy
}

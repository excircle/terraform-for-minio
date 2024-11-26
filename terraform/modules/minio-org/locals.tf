# Parse groups_data from module definition
locals {
  groups_names = keys(var.groups_data.groups)
  groups  = var.groups_data.groups
  buckets = var.buckets_data.buckets
  policy_map = { for v in var.policies : v.group => { name = v.name, policy = v.policy }... }
}


# Outputs to confirm data extraction
output "groups" {
  value = local.groups
}

output "group_names" {
  value = local.groups_names
}

output "policy_map" {
  value = local.policy_map
}

output "buckets" {
  value = local.buckets
}

output "users" {
  value = module.users.users
}

output "policies" {
  value = var.policies
}
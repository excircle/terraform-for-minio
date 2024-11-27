module "org-buckets" {
  source = "../org-buckets" # Ideally hosted remotely (github.com/my-org/org-bucket-module)

  buckets = local.buckets
}

module "groups" {
  source        = "../org-groups"

  for_each      = toset(local.groups_names)
  group_name    = each.key
  policies      = [for policy in local.policy_map[each.key] : policy]
  users         = local.groups[each.key].users
}

module "users" {
  source        = "../org-users"

  users         = toset(flatten([for user in local.groups : user.users]))
}
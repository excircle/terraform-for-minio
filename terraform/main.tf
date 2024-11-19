# module "buckets-test" {
#   source = "./modules/org-buckets"

#   buckets = [
#     "bucket1",
#     "bucket2"
#   ]
# }

# module "groups-test" {
#   source = "./modules/org-groups"

#   group_name = "test-group"
#   policies = local.policies
#   users   =  module.users-test.users
# }

# module "users-test" {
#   source = "./modules/org-users"

#   users = [
#     "alex@minio.io",
#     "joe@minio.io"
#   ]
# }
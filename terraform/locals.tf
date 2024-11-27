locals {
  groups_data = jsondecode(file("01-user-mappings.json"))
  buckets_data = jsondecode(file("02-buckets-data.json"))

  # Policy objects
  policies = [
    {
      name   = "admin_policy_one"
      policy = data.minio_iam_policy_document.group_policy_one.json
      group  = "admin"
    },
    {
      name   = "group_policy_two"
      policy = data.minio_iam_policy_document.group_policy_two.json
      group  = "eng"
    },
    {
      name   = "new_eng_policy"
      policy = data.minio_iam_policy_document.eng_policy.json
      group  = "eng"
    }
  ]
}

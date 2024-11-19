locals {
  policies = [
    {
      name   = "group_policy_one"
      policy = data.minio_iam_policy_document.group_policy_one.json
    },
    {
      name   = "group_policy_two"
      policy = data.minio_iam_policy_document.group_policy_two.json
    }
  ]
}

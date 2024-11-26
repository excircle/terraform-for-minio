variable "groups_data" {
  description = "A map containing the groups data parsed from the JSON file"
  type        = map(any)
}

variable "buckets_data" {
  description = "A map containing the buckets to be created in MinIO"
  type        = map(any)
}

variable "policies" {
  description = "A list of policies with name and policy content"
  type = list(object({
    name   = string
    policy = string
    group  = string
  }))
}
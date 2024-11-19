variable "group_name" {
  description = "The name of the group to create"
  type        = string
}

variable "policies" {
  description = "A list of policies with name and policy content"
  type = list(object({
    name   = string
    policy = string
  }))
}

variable "users" {
  type = list(string)
}
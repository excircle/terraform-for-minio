variable "buckets" {
  type = list(string)
  default = [
    "bucket-1",
    "bucket-2"
  ]
}

variable "users" {
  type = list(string)
  default = [
    "Alex",
    "Bob"
  ]
}
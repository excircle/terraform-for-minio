resource "minio_s3_bucket" "bucket" {
  for_each = toset(var.buckets)

  bucket = "${each.value}"
  acl    = "private"
}


resource "minio_s3_bucket_versioning" "bucket" {
  depends_on = [minio_s3_bucket.bucket]
  for_each = toset(var.buckets)

  bucket            = minio_s3_bucket.bucket[each.key].bucket

  versioning_configuration {
    status = "Enabled"
  }
}

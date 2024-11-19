terraform {
  required_providers {
    minio = {
      source = "aminueza/minio"
      version = "3.2.1"
    }
  }
}

provider minio {
  minio_server   = "127.0.0.1:9100"
  minio_user     = "minioadmin"
  minio_password = "minioadmin"
  minio_ssl = false
}
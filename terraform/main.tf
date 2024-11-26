module "my-minio-org" {
    source          = "./modules/minio-org"
    
    groups_data     = local.groups_data
    buckets_data    = local.buckets_data
    policies        = local.policies
}
resource "huaweicloud_obs_bucket" "bucket-01" {
  bucket        = "my-tf-test-bucket"
  acl           = "private"
  versioning    = true
  storage_class = "STANDARD"
}
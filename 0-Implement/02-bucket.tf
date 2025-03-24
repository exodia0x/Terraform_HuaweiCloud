resource "huaweicloud_obs_bucket" "bucket-01" {
  bucket        = "my-peace-01-tf-test-bucket"
  acl           = "private"
  versioning    = true
  storage_class = "STANDARD"
}
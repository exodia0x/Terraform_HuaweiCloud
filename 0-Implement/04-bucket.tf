resource "huaweicloud_obs_bucket" "bucket-01" {
  bucket        = "my-nanami-test-bucket-01"
  acl           = "private"
  versioning    = true
  storage_class = "STANDARD"
}
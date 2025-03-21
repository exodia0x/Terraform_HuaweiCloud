variable "flavor_id" {}
variable "image_id" {}
variable "ssh_key" {}
variable "security_group_id" {}

resource "huaweicloud_as_configuration" "my_as_config" {
  scaling_configuration_name = "my_as_config"

  instance_config {
    flavor             = var.flavor_id
    image              = var.image_id
    key_name           = var.ssh_key
    security_group_ids = [var.security_group_id]

    disk {
      size        = 40
      volume_type = "SSD"
      disk_type   = "SYS"
    }
  }
}
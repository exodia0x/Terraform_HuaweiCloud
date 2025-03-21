data "huaweicloud_availability_zones" "myaz" {}

data "huaweicloud_compute_flavors" "myflavor" {
  availability_zone = data.huaweicloud_availability_zones.myaz.names[0]
  performance_type  = "normal"
  cpu_core_count    = 1
  memory_size       = 1
}

data "huaweicloud_images_image" "myimage" {
  name        = "Ubuntu 24.04 server 64bit"
  most_recent = true
}


# resource "huaweicloud_compute_instance" "basic" {
#   name      = "basic-001"
#   image_id  = data.huaweicloud_images_image.myimage.id
#   flavor_id = data.huaweicloud_compute_flavors.myflavor.ids[0]
#   #   security_group_ids = [var.secgroup_id]
#   availability_zone = data.huaweicloud_availability_zones.myaz.names[0]
#   admin_pass        = "Nanami@201"

#   network {
#     uuid = huaweicloud_vpc_subnet.subnet001.id
#   }
# }
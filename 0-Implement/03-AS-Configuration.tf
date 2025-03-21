resource "huaweicloud_as_configuration" "my_as_config" {
  scaling_configuration_name = "my_as_config"

  instance_config {
    flavor     = data.huaweicloud_compute_flavors.myflavor.ids[0]
    image      = data.huaweicloud_images_image.myimage.id
    admin_pass = "Nanami@201"
    
    disk {
      size        = 40
      volume_type = "SSD"
      disk_type   = "SYS"
    }
  }
}
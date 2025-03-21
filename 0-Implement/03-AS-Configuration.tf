resource "huaweicloud_as_configuration" "my_as_config" {
  scaling_configuration_name = "my_as_config"

  instance_config {
    flavor      = data.huaweicloud_compute_flavors.myflavor.ids[0]
    image       = data.huaweicloud_images_image.myimage.id
    instance_id = huaweicloud_compute_instance.basic.id
    user_data   = <<EOT
        #! /bin/bash
        echo 'root:Nanami@201' | chpasswd -e
        EOT

    disk {
      size        = 40
      volume_type = "SSD"
      disk_type   = "SYS"
    }
  }
}
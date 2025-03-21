resource "huaweicloud_as_group" "my_as_group" {
  scaling_group_name       = "my_as_group"
  scaling_configuration_id = huaweicloud_as_configuration.my_as_config.id
  desire_instance_number   = 1
  min_instance_number      = 0
  max_instance_number      = 2
  vpc_id                   = huaweicloud_vpc.example.id
  delete_publicip          = true
  delete_instances         = "yes"

  networks {
    id = huaweicloud_vpc_subnet.subnet001.id
  }
}
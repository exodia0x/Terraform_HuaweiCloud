resource "huaweicloud_vpc_route_table" "custom_route_subnet-01" {
  name        = "custom_route_subnet-01"
  vpc_id      = huaweicloud_vpc.example.id
  subnets =    huaweicloud_vpc_subnet.subnet001.id

#   route {
#     destination = "172.16.0.0/16"
#     type        = "peering"
#     nexthop     = var.vpc_peering_id
#   }
}
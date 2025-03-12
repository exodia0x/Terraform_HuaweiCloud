resource "huaweicloud_vpc_peering_connection" "peering" {
  name        = "Peering-VPC-Ex1-Ex2"
  vpc_id      = var.vpc_id
  peer_vpc_id = var.accepter_vpc_id
}
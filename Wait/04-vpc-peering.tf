resource "huaweicloud_vpc_peering_connection" "peering" {
  name        = "Peering-VPC-Ex1-Ex2"
  vpc_id      = huaweicloud_vpc.example.id
  peer_vpc_id = huaweicloud_vpc.example2.id
}
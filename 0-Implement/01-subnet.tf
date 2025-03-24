// Subnet 001 //
resource "huaweicloud_vpc_subnet" "subnet001" {
  name              = "subnet-01"
  cidr              = "192.168.98.0/28"
  gateway_ip        = "192.168.98.1"
  vpc_id            = huaweicloud_vpc.example.id
  availability_zone = "ap-southeast-3a"
}

# // Subnet 002 //
# resource "huaweicloud_vpc_subnet" "subnet002" {
#   name              = "subnet-02"
#   cidr              = "192.168.98.16/28"
#   gateway_ip        = "192.168.98.17"
#   vpc_id            = huaweicloud_vpc.example.id
#   availability_zone = "ap-southeast-3b"
# }
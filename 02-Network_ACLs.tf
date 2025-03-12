resource "huaweicloud_vpc_network_acl" "subnet-01" {
  name                  = "acls-subnet-01"
  description           = "acls-subnet-01"
  enterprise_project_id = 0
  enabled               = true

  ingress_rules {
    action                 = "allow"
    ip_version             = 4
    protocol               = "tcp"
    source_ip_address      = "192.168.0.0/24"
    source_port            = "22-30,33"
    destination_ip_address = "0.0.0.0/0"
    destination_port       = "8001-8010"
  }

  ingress_rules {
    action                 = "deny"
    ip_version             = 4
    protocol               = "icmp"
    source_ip_address      = "192.168.0.0/24"
    destination_ip_address = "0.0.0.0/0"
  }

  egress_rules {
    action                 = "allow"
    ip_version             = 4
    protocol               = "tcp"
    source_ip_address      = "172.16.0.0/24"
    source_port            = "22-30,33"
    destination_ip_address = "0.0.0.0/0"
    destination_port       = "8001-8010"
  }

  egress_rules {
    action                 = "deny"
    ip_version             = 4
    protocol               = "icmp"
    source_ip_address      = "172.16.0.0/24"
    destination_ip_address = "0.0.0.0/0"
  }

  associated_subnets {
    subnet_id = huaweicloud_vpc_subnet.subnet001.id
  }
}
resource "huaweicloud_vpc_network_acl" "subnet-01" {
  name                  = "acls-subnet-01"
  description           = "acls-subnet-01"
  enterprise_project_id = 0
  enabled               = true

  ingress_rules {
    action                 = "deny"
    ip_version             = 4
    protocol               = "all"
    source_ip_address      = "0.0.0.0/0"
    destination_ip_address = "0.0.0.0/0"
  }

  egress_rules {
    action                 = "allow"
    ip_version             = 4
    protocol               = "all"
    source_ip_address      = "0.0.0.0/0"
    source_port            = "all"
    destination_ip_address = "0.0.0.0/0"
    destination_port       = "all"
  }
  associated_subnets {
    subnet_id = huaweicloud_vpc_subnet.subnet001.id
  }
}


resource "huaweicloud_vpc_network_acl" "subnet-012" {
  name                  = "acls-subnet-02"
  description           = "acls-subnet-02"
  enterprise_project_id = 0
  enabled               = true

  ingress_rules {
    action                 = "deny"
    ip_version             = 4
    protocol               = "all"
    source_ip_address      = "0.0.0.0/0"
    destination_ip_address = "0.0.0.0/0"
  }

  egress_rules {
    action                 = "allow"
    ip_version             = 4
    protocol               = "all"
    source_ip_address      = "0.0.0.0/0"
    source_port            = "all"
    destination_ip_address = "0.0.0.0/0"
    destination_port       = "all"
  }
  associated_subnets {
    subnet_id = huaweicloud_vpc_subnet.subnet002.id
  }
}
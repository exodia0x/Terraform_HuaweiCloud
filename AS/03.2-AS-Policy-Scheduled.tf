### Scheduled - ADD ###
variable "as_group_id" {}

resource "huaweicloud_as_policy" "my_aspolicy_Scheduled" {
  scaling_policy_name = "my_aspolicy_Scheduled"
  scaling_policy_type = "SCHEDULED"
  scaling_group_id    = var.as_group_id

  scaling_policy_action {
    operation       = "ADD"
    instance_number = 1
  }
  scheduled_policy {
    launch_time = "2022-12-22T12:00Z"
  }
}

### Scheduled - REMOVE ###
variable "as_group_id" {}

resource "huaweicloud_as_policy" "my_aspolicy_Scheduled" {
  scaling_policy_name = "my_aspolicy_Scheduled"
  scaling_policy_type = "SCHEDULED"
  scaling_group_id    = var.as_group_id

  scaling_policy_action {
    operation       = "REMOVE"
    instance_number = 1
  }
  scheduled_policy {
    launch_time = "2022-12-22T12:00Z"
  }
}
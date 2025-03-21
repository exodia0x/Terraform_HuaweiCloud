### Periodic - ADD ###
resource "huaweicloud_as_policy" "my_aspolicy_periodic" {
  scaling_policy_name = "my_aspolicy_periodic"
  scaling_policy_type = "RECURRENCE"
  scaling_group_id    = huaweicloud_as_group.my_as_group.id

  scaling_policy_action {
    operation       = "ADD"
    instance_number = 1
  }
  scheduled_policy {
    launch_time     = "09:15"
    recurrence_type = "Daily"
    # start_time      = "2022-11-30T12:00Z"
    end_time        = "2025-03-30T12:00Z"
  }
}

### Periodic - REMOVE ###
resource "huaweicloud_as_policy" "my_aspolicy_periodic_remove" {
  scaling_policy_name = "my_aspolicy_periodic_remove"
  scaling_policy_type = "REMOVE"
  scaling_group_id    = huaweicloud_as_group.my_as_group.id

  scaling_policy_action {
    operation       = "REMOVE"
    instance_number = 1
  }
  scheduled_policy {
    launch_time     = "09:20"
    recurrence_type = "Daily"
    # start_time      = "2022-11-30T12:00Z"
    end_time        = "2025-03-30T12:00Z"
  }
}
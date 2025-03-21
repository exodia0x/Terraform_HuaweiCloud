### Periodic ###
resource "huaweicloud_as_policy" "my_aspolicy_periodic" {
  scaling_policy_name = "my_aspolicy_periodic"
  scaling_policy_type = "RECURRENCE"
  scaling_group_id    = huaweicloud_as_group.my_as_group.id

  scaling_policy_action {
    operation       = "ADD"
    instance_number = 1
  }
  scheduled_policy {
    launch_time     = "16:10"
    recurrence_type = "Daily"
    # start_time      = "2022-11-30T12:00Z"
    # end_time        = "2022-12-30T12:00Z"
  }
}
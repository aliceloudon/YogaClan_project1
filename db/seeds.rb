require_relative('../models/pose.rb')

# Pose.delete_all

pose1 = Pose.new({
  "name" => "Child's Pose",
  "logo" => "",
  "hold_time" => "00:00:30",
  "effort_level" => "1"
  })

# pose1.save
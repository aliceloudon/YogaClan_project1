require_relative('../models/pose.rb')
require('pry')

Pose.delete_all

pose1 = Pose.new({
  "name" => "Childs Pose",
  "logo" => "",
  "hold_time" => 30,
  "effort_level" => 1
  })

pose1.save

binding.pry
nil
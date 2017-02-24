require_relative('../models/pose.rb')
require('pry')

Pose.delete_all

pose1 = Pose.new({
  "name" => "Childs Pose",
  "image" => "http://kimfischyoga.com/wp-content/uploads/2010/08/20100215-0010.jpg",
  "hold_time" => 30,
  "effort_level" => 1
  })

pose1.save

binding.pry
nil
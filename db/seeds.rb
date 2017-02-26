require_relative('../models/pose.rb')
require_relative('../models/sequence.rb')
require_relative('../models/join.rb')
require('pry')

Join.delete_all
Sequence.delete_all
Pose.delete_all

pose1 = Pose.new({
  "name" => "Child Pose",
  "image" => "http://kimfischyoga.com/wp-content/uploads/2010/08/20100215-0010.jpg",
  "hold_time" => 30,
  "effort_level" => 1,
  })

pose2 = Pose.new({
  "name" => "Downward Dog",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/Wz6oS_MHo9hkdsBFKomQYoDStQA/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2014/03/03/084/n/1922729/9a2d9db16ec7e401_Down-Dog-Blue.jpg",
  "hold_time" => 20,
  "effort_level" => 3,
  })

pose3 = Pose.new({
  "name" => "Tree Pose",
  "image" => "https://www.drweil.com/wp-content/uploads/2016/12/health-wellness_balanced-living_exercise-fitness_tree-pose_2716x1810_000048057186.jpg",
  "hold_time" => 10,
  "effort_level" => 3,
  })

pose1.save
pose2.save
pose3.save

sequence1 = Sequence.new({
  "name" => "Hamstrings"
  })

sequence2 = Sequence.new({
  "name" => "Shoulders"
  })

sequence3 = Sequence.new({
  "name" => "Back"
  })

sequence1.save
sequence2.save
sequence3.save

join1 = Join.new({
  'pose_id' => pose1.id,
  'sequence_id' => sequence1.id
})

join2 = Join.new({
  'pose_id' => pose2.id,
  'sequence_id' => sequence2.id
})

join3 = Join.new({
  'pose_id' => pose3.id,
  'sequence_id' => sequence3.id
})

join1.save
join2.save
join3.save

binding.pry
nil
require_relative('../models/pose.rb')
require_relative('../models/sequence.rb')
require('pry')

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

pose4 = Pose.new({
  "name" => "Pigeon Pose",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/WWtpgSt1r_KQVjbIX_oaDbnE3R8/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2013/12/23/561/n/1922729/22549ec830921106_Pigeon-1600/i/Pigeon-Pose.jpg",
  "hold_time" => 40,
  "effort_level" => 5,
  })

pose5 = Pose.new({
  "name" => "Warrior 3",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/AvP9Vfn6WIOFU_rPKC7BYlELpu0/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2014/05/13/954/n/1922729/2a8993ada27d53fb_Warrior-3_1_/i/Warrior-3-Pose.jpg",
  "hold_time" => 20,
  "effort_level" => 5,
  })

pose6 = Pose.new({
  "name" => "Mountain Pose",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/9R4M6-DABk3vZsHbQSILjvMPQZU/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2014/05/13/961/n/1922729/77f240460889d2a3_mountain-pose/i/Mountain-Pose.jpg",
  "hold_time" => 30,
  "effort_level" => 1,
  })

pose1.save
pose2.save
pose3.save
pose4.save
pose5.save
pose6.save

sequence1 = Sequence.new({
  "name" => "Routine for tight hamstrings", 
  "total_time" => (pose1.hold_time + pose2.hold_time), 
  "average_effort_level" => 5,
  "pose_id_1" => pose1.id,
  "pose_id_2" => pose2.id
  })

sequence2 = Sequence.new({
  "name" => "Shoulder Flexibility", 
  "total_time" => (pose4.hold_time + pose5.hold_time), 
  "average_effort_level" => 3,
  "pose_id_1" => pose4.id,
  "pose_id_2" => pose5.id
  })

sequence1.save
sequence2.save

binding.pry
nil
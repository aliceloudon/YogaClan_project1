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
  "name" => "Bridge Pose",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/1VUar1RGwc4N9GxIndQ1Xrk303s/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2015/12/03/135/n/1922729/36b271a6_Half-Wheel-1600/i/Bridge-Pose.jpg",
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

pose7 = Pose.new({
  "name" => "Full Forward Bend",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/HKMByaCczQIOpbp_kvwXOki3jyk/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2014/01/23/796/n/1922729/d365275eacc57ccb_Standing-Forward-Bend/i/Standing-Forward-Bend-Pose.jpg",
  "hold_time" => 30,
  "effort_level" => 4,
  })

pose8 = Pose.new({
  "name" => "Chair Pose",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/BBDlawBS7LXbC4A6fkwUDIcb1EI/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2014/01/23/796/n/1922729/fd6c612a638a4608_Fierce-_3_/i/Chair-Pose.jpg",
  "hold_time" => 10,
  "effort_level" => 3,
  })

pose9 = Pose.new({
  "name" => "Wide-Legged Forward Bend",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/zf7dRYcxrqs3E8sb4279NSwwEGc/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2013/08/30/818/n/1922729/d7cca00f30ffdc23__Wide-Legged-D-2700/i/Wide-Legged-Forward-Bend-C.jpg",
  "hold_time" => 30,
  "effort_level" => 4,
  })

pose1.save
pose2.save
pose3.save
pose4.save
pose5.save
pose6.save
pose7.save
pose8.save
pose9.save

sequence1 = Sequence.new({
  "name" => "Relax"
  })

sequence2 = Sequence.new({
  "name" => "Improve shoulder flexibility"
  })

sequence3 = Sequence.new({
  "name" => "Strengthen back"
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

join4 = Join.new({
  'pose_id' => pose2.id,
  'sequence_id' => sequence1.id
})

join5 = Join.new({
  'pose_id' => pose3.id,
  'sequence_id' => sequence1.id
})

join1.save
join2.save
join3.save
join4.save
join5.save

binding.pry
nil
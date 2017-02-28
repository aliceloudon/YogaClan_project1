require_relative('../models/pose.rb')
require_relative('../models/sequence.rb')
require_relative('../models/join.rb')
require('pry')

Join.delete_all
Sequence.delete_all
Pose.delete_all

pose1 = Pose.new({
  "name" => "Child Pose",
  "image" => "https://media4.popsugar-assets.com/files/2015/07/28/634/n/1922398/6c64e06f_Child_s-Pose.xxxlarge_2x.jpg",
  "hold_time" => 30,
  "effort_level" => 1,
  })
pose1.save

pose2 = Pose.new({
  "name" => "Downward Dog",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/Wz6oS_MHo9hkdsBFKomQYoDStQA/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2014/03/03/084/n/1922729/9a2d9db16ec7e401_Down-Dog-Blue.jpg",
  "hold_time" => 20,
  "effort_level" => 3,
  })
pose2.save

pose3 = Pose.new({
  "name" => "Bridge Pose",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/1VUar1RGwc4N9GxIndQ1Xrk303s/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2015/12/03/135/n/1922729/36b271a6_Half-Wheel-1600/i/Bridge-Pose.jpg",
  "hold_time" => 10,
  "effort_level" => 3,
  })
pose3.save

pose4 = Pose.new({
  "name" => "Pigeon Pose",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/WWtpgSt1r_KQVjbIX_oaDbnE3R8/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2013/12/23/561/n/1922729/22549ec830921106_Pigeon-1600/i/Pigeon-Pose.jpg",
  "hold_time" => 40,
  "effort_level" => 5,
  })
pose4.save

pose5 = Pose.new({
  "name" => "Warrior 3",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/AvP9Vfn6WIOFU_rPKC7BYlELpu0/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2014/05/13/954/n/1922729/2a8993ada27d53fb_Warrior-3_1_/i/Warrior-3-Pose.jpg",
  "hold_time" => 20,
  "effort_level" => 5,
  })
pose5.save

pose6 = Pose.new({
  "name" => "Mountain Pose",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/9R4M6-DABk3vZsHbQSILjvMPQZU/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2014/05/13/961/n/1922729/77f240460889d2a3_mountain-pose/i/Mountain-Pose.jpg",
  "hold_time" => 30,
  "effort_level" => 1,
  })
pose6.save

pose7 = Pose.new({
  "name" => "Full Forward Bend",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/HKMByaCczQIOpbp_kvwXOki3jyk/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2014/01/23/796/n/1922729/d365275eacc57ccb_Standing-Forward-Bend/i/Standing-Forward-Bend-Pose.jpg",
  "hold_time" => 30,
  "effort_level" => 4,
  })
pose7.save

pose8 = Pose.new({
  "name" => "Chair Pose",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/BBDlawBS7LXbC4A6fkwUDIcb1EI/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2014/01/23/796/n/1922729/fd6c612a638a4608_Fierce-_3_/i/Chair-Pose.jpg",
  "hold_time" => 10,
  "effort_level" => 3,
  })
pose8.save

pose9 = Pose.new({
  "name" => "Wide-Legged Forward Bend",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/zf7dRYcxrqs3E8sb4279NSwwEGc/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2013/08/30/818/n/1922729/d7cca00f30ffdc23__Wide-Legged-D-2700/i/Wide-Legged-Forward-Bend-C.jpg",
  "hold_time" => 30,
  "effort_level" => 4,
  })
pose9.save

pose10 = Pose.new({
  "name" => "Three-Legged Downward Dog",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/SpwsDue3YmNmfxAAof9MeZBLX7I/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2014/07/10/062/n/1922729/3dd856628c56265b_3-legged-dog-green/i/Three-Legged-Down-Dog.jpg",
  "hold_time" => 10,
  "effort_level" => 4,
  })
pose10.save

pose11 = Pose.new({
  "name" => "Seated Twist",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/QmM2ke-dvasTW2JRp_IZd5Gt1i8/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2013/12/23/690/n/1922729/4466b7d7526f90e6_twist-1600/i/Seated-Spinal-Twist.jpg",
  "hold_time" => 20,
  "effort_level" => 2,
  })
pose11.save

pose12 = Pose.new({
  "name" => "Locust",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/uk5mZaldDlTb31WpQsu-wko2-7Q/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2013/12/23/684/n/1922729/4da1d4dafa19be1a_Locust-1600/i/Locust.jpg",
  "hold_time" => 10,
  "effort_level" => 3,
  })
pose12.save

pose13 = Pose.new({
  "name" => "Headstand",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/e3hczqP2H3z_PZxBcJMH05kMUT4/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2013/12/23/684/n/1922729/5d9393d6f8491edd_Headstand/i/Bound-Headstand.jpg",
  "hold_time" => 20,
  "effort_level" => 5,
  })
pose13.save

pose14 = Pose.new({
  "name" => "Seated Straddle",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/hSMin-upw4yIkdWamnFxC50gji0/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2017/02/02/869/n/1922729/4f720a8aebcf8065_Wide-Straddle-Hands-on-FLoor/i/Seated-Straddle.jpg",
  "hold_time" => 20,
  "effort_level" => 3,
  })
pose14.save

pose15 = Pose.new({
  "name" => "Butterfly",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/HrYCLmmL49Jc2fKQHfmSZEUXoQc/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2017/02/02/640/n/1922729/b7a94fb458eefddf_Butterfly-Blue/i/Butterfly.jpg",
  "hold_time" => 30,
  "effort_level" => 2,
  })
pose15.save

pose16 = Pose.new({
  "name" => "Seated Forward Bend",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/agKcKNXfxtsTzsPzblVmqIlBn0k/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2017/02/02/641/n/1922729/fbffe50f8bcf08eb_Seated-Forward-Bend-Facing/i/Seated-Forward-Bend.jpg",
  "hold_time" => 50,
  "effort_level" => 4,
  })
pose16.save

pose17 = Pose.new({
  "name" => "Rock the Baby",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/PFvZyzR9qxtBsE8W-8hXWISrGYs/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2017/02/02/867/n/1922729/8534f2ceb1d962b3_Rock-the-Baby/i/Rock-Baby.jpg",
  "hold_time" => 20,
  "effort_level" => 2,
  })
pose17.save


sequence1 = Sequence.new({
  "name" => "Relaxing Sequence"
  })
sequence1.save

sequence2 = Sequence.new({
  "name" => "Improve shoulder flexibility"
  })
sequence2.save

sequence3 = Sequence.new({
  "name" => "Sequence for tight hamstrings"
  })
sequence3.save

sequence4 = Sequence.new({
  "name" => "Sun Salutation for Richard"
  })
sequence4.save

join1 = Join.new({
  'pose_id' => pose1.id,
  'sequence_id' => sequence1.id
})
join1.save

join2 = Join.new({
  'pose_id' => pose2.id,
  'sequence_id' => sequence2.id
})
join2.save

join3 = Join.new({
  'pose_id' => pose3.id,
  'sequence_id' => sequence3.id
})
join3.save

join4 = Join.new({
  'pose_id' => pose2.id,
  'sequence_id' => sequence1.id
})
join4.save

join5 = Join.new({
  'pose_id' => pose3.id,
  'sequence_id' => sequence1.id
})
join5.save

binding.pry
nil
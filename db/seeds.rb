require_relative('../models/pose.rb')
require_relative('../models/sequence.rb')
require_relative('../models/pose_sequence.rb')
require('pry')

PoseSequence.delete_all
Sequence.delete_all
Pose.delete_all

pose1 = Pose.new({
  "name" => "Child Pose",
  "image" => "https://media4.popsugar-assets.com/files/2015/07/28/634/n/1922398/6c64e06f_Child_s-Pose.xxxlarge_2x.jpg",
  "time" => 30,
  "effort_level" => 1,
  })
pose1.save

pose2 = Pose.new({
  "name" => "Downward Dog",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/Wz6oS_MHo9hkdsBFKomQYoDStQA/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2014/03/03/084/n/1922729/9a2d9db16ec7e401_Down-Dog-Blue.jpg",
  "time" => 20,
  "effort_level" => 3,
  })
pose2.save

pose3 = Pose.new({
  "name" => "Bridge Pose",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/1VUar1RGwc4N9GxIndQ1Xrk303s/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2015/12/03/135/n/1922729/36b271a6_Half-Wheel-1600/i/Bridge-Pose.jpg",
  "time" => 10,
  "effort_level" => 3,
  })
pose3.save

pose4 = Pose.new({
  "name" => "Pigeon Pose",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/WWtpgSt1r_KQVjbIX_oaDbnE3R8/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2013/12/23/561/n/1922729/22549ec830921106_Pigeon-1600/i/Pigeon-Pose.jpg",
  "time" => 40,
  "effort_level" => 5,
  })
pose4.save

pose5 = Pose.new({
  "name" => "Warrior 3",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/PcfVrkaVRSxYZNbYsUvzHH2lDrY/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2015/04/08/975/n/1922729/605036c9_Warrior-3/i/Warrior-3.jpg",
  "time" => 20,
  "effort_level" => 5,
  })
pose5.save

pose6 = Pose.new({
  "name" => "Mountain Pose",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/_yqFAnxC7iFEoB_FYcPxdCwq3Zo/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2016/09/22/754/n/1922729/d54b4ce4a8541531_Mountain-Pose/i/Mountain-Pose.jpg",
  "time" => 30,
  "effort_level" => 1,
  })
pose6.save

pose7 = Pose.new({
  "name" => "Full Forward Bend",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/R25ob7OizQFMLE8drRRWT3L8VcE/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2015/01/08/698/n/1922729/44366bdce0586907_forward-bend-centerd/i/Standing-Forward-Bend.jpg",
  "time" => 30,
  "effort_level" => 4,
  })
pose7.save

pose9 = Pose.new({
  "name" => "Wide-Legged Forward Bend",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/3i2RzsECiFY_2Qbs0qRDTyRwMtQ/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2013/12/23/684/n/1922729/c3544fcea97eca62_wide-legged-forward-bend/i/Wide-Legged-Forward-Bend.jpg",
  "time" => 30,
  "effort_level" => 4,
  })
pose9.save

pose10 = Pose.new({
  "name" => "Three-Legged Downward Dog",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/RMfORXsnAAuxDLx46CCAghMDlZU/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2015/11/13/620/n/1922729/89fbbf44_1/i/Three-Legged-Dog.jpg",
  "time" => 10,
  "effort_level" => 4,
  })
pose10.save

pose11 = Pose.new({
  "name" => "Seated Twist",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/QmM2ke-dvasTW2JRp_IZd5Gt1i8/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2013/12/23/690/n/1922729/4466b7d7526f90e6_twist-1600/i/Seated-Spinal-Twist.jpg",
  "time" => 20,
  "effort_level" => 2,
  })
pose11.save

pose12 = Pose.new({
  "name" => "Locust",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/uk5mZaldDlTb31WpQsu-wko2-7Q/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2013/12/23/684/n/1922729/4da1d4dafa19be1a_Locust-1600/i/Locust.jpg",
  "time" => 10,
  "effort_level" => 3,
  })
pose12.save

pose13 = Pose.new({
  "name" => "Headstand",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/C_nXOOuPJj0l3DWBSo8-_ElMLz8/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2016/09/27/480/n/1922729/3b7598d3_Headstand-facing-wall/i/Bound-Headstand.jpg",
  "time" => 20,
  "effort_level" => 5,
  })
pose13.save

pose15 = Pose.new({
  "name" => "Butterfly",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/HrYCLmmL49Jc2fKQHfmSZEUXoQc/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2017/02/02/640/n/1922729/b7a94fb458eefddf_Butterfly-Blue/i/Butterfly.jpg",
  "time" => 30,
  "effort_level" => 2,
  })
pose15.save

pose16 = Pose.new({
  "name" => "Seated Forward Bend",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/agKcKNXfxtsTzsPzblVmqIlBn0k/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2017/02/02/641/n/1922729/fbffe50f8bcf08eb_Seated-Forward-Bend-Facing/i/Seated-Forward-Bend.jpg",
  "time" => 50,
  "effort_level" => 4,
  })
pose16.save

pose17 = Pose.new({
  "name" => "Rock the Baby",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/PFvZyzR9qxtBsE8W-8hXWISrGYs/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2017/02/02/867/n/1922729/8534f2ceb1d962b3_Rock-the-Baby/i/Rock-Baby.jpg",
  "time" => 20,
  "effort_level" => 2,
  })
pose17.save

pose18 = Pose.new({
  "name" => "Handstand",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/RZ3ku7ye2hOLYPfBzsT45GQfabY/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2014/12/15/700/n/1922729/35c2f123aca7d048_Handstand-Purple/i/Handstand.jpg",
  "time" => 10,
  "effort_level" => 5,
  })
pose18.save

pose19 = Pose.new({
  "name" => "Shoulder Stand",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/Xt3hL5oV7YoEY6VezhHCMr-tdDE/fit-in/2048xorig/filters:format_auto-!!-:strip_icc-!!-/2016/07/08/578/n/1922729/b39166c7_Shoudlerstand/i/Shoulderstand.jpg",
  "time" => 30,
  "effort_level" => 4,
  })
pose19.save

pose20 = Pose.new({
  "name" => "Warrior 1",
  "image" => "https://media1.popsugar-assets.com/files/thumbor/c70js7VHOk0-gi2Znv4hmQ8W-f4/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2015/11/13/620/n/1922729/33084ecc_Warrior-1_Blue/i/Warrior-1-Pose.jpg",
  "time" => 30,
  "effort_level" => 4,
  })
pose20.save

sequence1 = Sequence.new({
  "name" => "Relax"
  })
sequence1.save

sequence2 = Sequence.new({
  "name" => "Shoulder flexibility"
  })
sequence2.save

sequence3 = Sequence.new({
  "name" => "Sequence for tight hamstrings"
  })
sequence3.save

sequence4 = Sequence.new({
  "name" => "Energy"
  })
sequence4.save

sequence5 = Sequence.new({
  "name" => "Backbends"
  })
sequence5.save

pose_sequence_1 = PoseSequence.new({
  'pose_id' => pose1.id,
  'sequence_id' => sequence1.id
})
pose_sequence_1.save

pose_sequence_2 = PoseSequence.new({
  'pose_id' => pose4.id,
  'sequence_id' => sequence1.id
})
pose_sequence_2.save

pose_sequence_3 = PoseSequence.new({
  'pose_id' => pose6.id,
  'sequence_id' => sequence1.id
})
pose_sequence_3.save

pose_sequence_4 = PoseSequence.new({
  'pose_id' => pose11.id,
  'sequence_id' => sequence1.id
})
pose_sequence_4.save

pose_sequence_6 = PoseSequence.new({
  'pose_id' => pose15.id,
  'sequence_id' => sequence1.id
})
pose_sequence_6.save

pose_sequence_7 = PoseSequence.new({
  'pose_id' => pose16.id,
  'sequence_id' => sequence1.id
})
pose_sequence_7.save

pose_sequence_8 = PoseSequence.new({
  'pose_id' => pose17.id,
  'sequence_id' => sequence1.id
})
pose_sequence_8.save

pose_sequence_9 = PoseSequence.new({
  'pose_id' => pose1.id,
  'sequence_id' => sequence2.id
})
pose_sequence_9.save

pose_sequence_10 = PoseSequence.new({
  'pose_id' => pose2.id,
  'sequence_id' => sequence2.id
})
pose_sequence_10.save

pose_sequence_12 = PoseSequence.new({
  'pose_id' => pose11.id,
  'sequence_id' => sequence2.id
})
pose_sequence_12.save

pose_sequence_13 = PoseSequence.new({
  'pose_id' => pose15.id,
  'sequence_id' => sequence2.id
})
pose_sequence_13.save

pose_sequence_14 = PoseSequence.new({
  'pose_id' => pose2.id,
  'sequence_id' => sequence3.id
})
pose_sequence_14.save

pose_sequence_15 = PoseSequence.new({
  'pose_id' => pose4.id,
  'sequence_id' => sequence3.id
})
pose_sequence_15.save

pose_sequence_16 = PoseSequence.new({
  'pose_id' => pose7.id,
  'sequence_id' => sequence3.id
})
pose_sequence_16.save

pose_sequence_17 = PoseSequence.new({
  'pose_id' => pose9.id,
  'sequence_id' => sequence3.id
})
pose_sequence_17.save

pose_sequence_19 = PoseSequence.new({
  'pose_id' => pose15.id,
  'sequence_id' => sequence3.id
})
pose_sequence_19.save

pose_sequence_20 = PoseSequence.new({
  'pose_id' => pose16.id,
  'sequence_id' => sequence3.id
})
pose_sequence_20.save

pose_sequence_21 = PoseSequence.new({
  'pose_id' => pose17.id,
  'sequence_id' => sequence3.id
})
pose_sequence_21.save

pose_sequence_22 = PoseSequence.new({
  'pose_id' => pose2.id,
  'sequence_id' => sequence4.id
})
pose_sequence_22.save

pose_sequence_23 = PoseSequence.new({
  'pose_id' => pose3.id,
  'sequence_id' => sequence4.id
})
pose_sequence_23.save

pose_sequence_24 = PoseSequence.new({
  'pose_id' => pose5.id,
  'sequence_id' => sequence4.id
})
pose_sequence_24.save

pose_sequence_25 = PoseSequence.new({
  'pose_id' => pose6.id,
  'sequence_id' => sequence4.id
})
pose_sequence_25.save

pose_sequence_26 = PoseSequence.new({
  'pose_id' => pose12.id,
  'sequence_id' => sequence4.id
})
pose_sequence_26.save

pose_sequence_27 = PoseSequence.new({
  'pose_id' => pose13.id,
  'sequence_id' => sequence4.id
})
pose_sequence_27.save

pose_sequence_28 = PoseSequence.new({
  'pose_id' => pose18.id,
  'sequence_id' => sequence4.id
})
pose_sequence_28.save

pose_sequence_29 = PoseSequence.new({
  'pose_id' => pose1.id,
  'sequence_id' => sequence5.id
})
pose_sequence_29.save

pose_sequence_30 = PoseSequence.new({
  'pose_id' => pose3.id,
  'sequence_id' => sequence5.id
})
pose_sequence_30.save

pose_sequence_31 = PoseSequence.new({
  'pose_id' => pose11.id,
  'sequence_id' => sequence5.id
})
pose_sequence_31.save

pose_sequence_32 = PoseSequence.new({
  'pose_id' => pose12.id,
  'sequence_id' => sequence5.id
})
pose_sequence_32.save

pose_sequence_32 = PoseSequence.new({
  'pose_id' => pose19.id,
  'sequence_id' => sequence5.id
})
pose_sequence_32.save

binding.pry
nil
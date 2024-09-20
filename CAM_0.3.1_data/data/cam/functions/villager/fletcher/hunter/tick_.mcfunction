execute as @e[type=villager,tag=!CAM_hlevel1,tag=!CAM_htriggered,predicate=cam:villager/trigger/fletcher_1] run function cam:villager/fletcher/hunter/huntertrigger
execute as @e[type=villager,tag=CAM_hlevel1,tag=!CAM_hlevel2,predicate=cam:villager/trigger/fletcher_2] run function cam:villager/fletcher/hunter/level2
execute as @e[type=villager,tag=CAM_hlevel2,tag=!CAM_hlevel3,predicate=cam:villager/trigger/fletcher_3] run function cam:villager/fletcher/hunter/level3
execute as @e[type=villager,tag=CAM_hlevel3,tag=!CAM_hlevel4,predicate=cam:villager/trigger/fletcher_4] run function cam:villager/fletcher/hunter/level4
execute as @e[type=villager,tag=CAM_hlevel4,tag=!CAM_hlevel5,predicate=cam:villager/trigger/fletcher_5] run function cam:villager/fletcher/hunter/level5
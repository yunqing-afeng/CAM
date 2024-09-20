execute as @s[type=villager,tag=!CAM_level1,tag=!CAM_triggered,predicate=cam:villager/trigger/farmer_1] run function cam:villager/farmer/woodman/woodmantrigger
execute as @s[type=villager,tag=CAM_level1,tag=!CAM_level2,predicate=cam:villager/trigger/farmer_2] run function cam:villager/farmer/woodman/level2
execute as @s[type=villager,tag=CAM_level2,tag=!CAM_level3,predicate=cam:villager/trigger/farmer_3] run function cam:villager/farmer/woodman/level3
execute as @s[type=villager,tag=CAM_level3,tag=!CAM_level4,predicate=cam:villager/trigger/farmer_4] run function cam:villager/farmer/woodman/level4
execute as @s[type=villager,tag=CAM_level4,tag=!CAM_level5,predicate=cam:villager/trigger/farmer_5] run function cam:villager/farmer/woodman/level5
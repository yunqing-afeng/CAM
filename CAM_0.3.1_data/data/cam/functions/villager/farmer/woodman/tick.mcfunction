execute as @e[type=villager,predicate=cam:villager/trigger/farmer] run function cam:villager/farmer/woodman/tick_
execute as @e[type=villager,tag=CAM_level1,predicate=!cam:villager/trigger/farmer] run function cam:villager/farmer/woodman/off

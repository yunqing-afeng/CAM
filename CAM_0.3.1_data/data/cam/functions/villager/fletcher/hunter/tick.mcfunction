execute as @e[type=villager,tag=!CAM_hlevel1,tag=!CAM_htriggered,predicate=cam:villager/trigger/fletcher] run function cam:villager/fletcher/hunter/tick_
execute as @e[type=villager,tag=CAM_hlevel1,predicate=!cam:villager/trigger/fletcher] run function cam:villager/fletcher/hunter/off
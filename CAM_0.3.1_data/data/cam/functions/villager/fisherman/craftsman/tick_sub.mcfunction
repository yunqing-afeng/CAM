execute as @s[type=villager,tag=!CAM_craftlevel1,tag=!CAM_craftsmantriggered,predicate=cam:villager/trigger/fisherman_1] at @s run function cam:villager/fisherman/craftsman/craftsmantrigger
execute as @s[type=villager,tag=CAM_craftlevel1,tag=!CAM_craftlevel2,predicate=cam:villager/trigger/fisherman_2] run function cam:villager/fisherman/craftsman/level2
execute as @s[type=villager,tag=CAM_craftlevel2,tag=!CAM_craftlevel3,predicate=cam:villager/trigger/fisherman_3] run function cam:villager/fisherman/craftsman/level3
execute as @s[type=villager,tag=CAM_craftlevel3,tag=!CAM_craftlevel4,predicate=cam:villager/trigger/fisherman_4] run function cam:villager/fisherman/craftsman/level4
execute as @s[type=villager,tag=CAM_craftlevel4,tag=!CAM_craftlevel5,predicate=cam:villager/trigger/fisherman_5] run function cam:villager/fisherman/craftsman/level5

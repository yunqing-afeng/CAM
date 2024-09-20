execute as @a run scoreboard players operation @s CAM_bowuse_to += @s CAM_bowuse
execute as @a run scoreboard players operation @s CAM_bowuse_to += @s CAM_crossbowuse

execute as @a[scores={CAM_bowuse_to=1..}] at @s run function cam:magic/bowenchant/function

#execute as @e[tag=CAM_arrow_enchanted,nbt={inGround:1b},type=arrow] run data modify entity @s CustomPotionEffects set value [{Id:-1b,ShowParticles:0}]
execute as @e[tag=CAM_arrow_enchanted,nbt={inGround:1b},type=arrow] run tag @s remove CAM_arrow_enchanted


scoreboard players reset @a CAM_bowuse
scoreboard players reset @a CAM_crossbowuse
scoreboard players reset @a CAM_bowuse_to
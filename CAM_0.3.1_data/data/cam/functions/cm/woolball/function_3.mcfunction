scoreboard players operation #temp CAM_woolball_num = @s CAM_woolball_num
scoreboard players set $success CAM_woolball 0
execute as @e[tag=CAM_woolball_main] if score @s CAM_woolball_num = #temp CAM_woolball_num run tag @s add CAM_woolball_tar
execute store success score $success CAM_woolball_num if entity @e[tag=CAM_woolball_tar]
execute if score $success CAM_woolball_num matches 1 run tp @s @e[tag=CAM_woolball_tar,limit=1]
execute unless score $success CAM_woolball_num matches 1 run summon item ~ ~ ~ {Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:"{\"translate\":\"item.cam.woolball\",\"italic\":\"false\"}"},CustomModelData:9102109,id:"cam:woolball",CAM_woolball:1b}}}
tag @e remove CAM_woolball_tar
execute unless score $success CAM_woolball_num matches 1 run kill @s

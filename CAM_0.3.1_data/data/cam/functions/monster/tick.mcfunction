execute as @e[type=minecraft:drowned,tag=!CAM_triggered] unless entity @s[nbt={HandItems:[{id:"minecraft:trident"}]}] run function cam:monster/drown/handheld
execute as @e[type=minecraft:husk,tag=!CAM_triggered] run function cam:monster/husk/handheld
function cam:monster/skeleton/tick
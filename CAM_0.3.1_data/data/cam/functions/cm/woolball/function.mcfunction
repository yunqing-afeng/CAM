#summon armor_stand ~ ~ ~ {Tags:["CAM_woolball_temp","CAM_woolball_r"],Passengers:[{id:"minecraft:item",Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:"{\"translate\":\"item.cam.woolball\",\"italic\":\"false\"}"},CustomModelData:9102109,id:"cam:woolball",CAM_woolball:1b}},PickupDelay:5}],Invisible:1b,Silent:1b,Small:1b}
#summon item ~ ~ ~ {Tags:["CAM_woolball_temp","CAM_woolball"],Item:{id:"minecraft:snowball",Count:1b,tag:{display:{Name:"{\"translate\":\"item.cam.woolball\",\"italic\":\"false\"}"},CustomModelData:9102109,id:"cam:woolball",CAM_woolball:1b}},PickupDelay:10}
scoreboard players operation @s CAM_woolball_num = # CAM_woolball_num
scoreboard players add # CAM_woolball 1
summon marker ~ ~ ~ {Tags:["CAM_woolball_temp","CAM_woolball"]}
scoreboard players operation @e[tag=CAM_woolball_temp] CAM_woolball_num = @s CAM_woolball_num
#data modify entity @e[tag=CAM_woolball_temp,sort=nearest,limit=1] Motion set from entity @s Motion

tag @e remove CAM_woolball_temp
tag @s add CAM_woolball_main
#kill @s

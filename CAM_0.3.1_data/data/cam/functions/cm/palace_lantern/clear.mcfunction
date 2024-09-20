execute store result score @s CAM_lantern_type run data get entity @s ArmorItems[3].tag.CustomModelData 1
execute if entity @s[tag=CAM_hang] run scoreboard players remove @s CAM_lantern_type 2
execute if entity @s[tag=!CAM_hang] run scoreboard players remove @s CAM_lantern_type 1
execute store result entity @s ArmorItems[3].tag.CustomModelData int 1 run scoreboard players get @s CAM_lantern_type
execute at @s as @e[type=item,nbt={Item:{id:"minecraft:lantern"}},distance=..2,limit=1,nbt=!{Item:{tag:{CAM_palace_lantern:1b}}},nbt=!{Item:{tag:{CAM_palace_lantern:2b}}}] run data modify entity @s Item.tag set from entity @e[limit=1,type=minecraft:armor_stand,tag=cam_palace_lantern,sort=nearest] ArmorItems[3].tag
kill @s
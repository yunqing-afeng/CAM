scoreboard players set @s CAM_unbreaking 0
setblock ~ 319 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
data modify block ~ 319 ~ Items[0].id set from entity @s SelectedItem.id
data modify block ~ 319 ~ Items[0].tag set from entity @s SelectedItem.tag
execute as @s store result score @s CAM_roduse run data get entity @s SelectedItem.tag.RodModeShift 1
execute as @s[scores={CAM_roduse=1}] run tag @s add CAM_rod
execute as @s[scores={CAM_roduse=1},tag=CAM_rod] run scoreboard players set @s CAM_roduse 2
scoreboard players set @s[scores={CAM_roduse=2},tag=!CAM_rod] CAM_roduse 1
tag @s remove CAM_rod
execute store result storage cam_rod RodModeShift byte 1 run scoreboard players get @s CAM_roduse
data modify block ~ 319 ~ Items[0].tag.RodModeShift set from storage minecraft:cam_rod RodModeShift
#木长杖
execute if block ~ 319 ~ shulker_box{Items:[{Slot:0b,tag:{RodModeShift:2b}}]} run function cam:magic/weapon/long_rod/replace_2
execute if block ~ 319 ~ shulker_box{Items:[{Slot:0b,tag:{RodModeShift:1b}}]} run function cam:magic/weapon/long_rod/replace_1


item replace entity @s weapon.mainhand with air
loot replace entity @s weapon.mainhand 1 mine ~ 319 ~ minecraft:diamond_pickaxe{isShulkerMarker:1b}
execute if block ~ 319 ~ shulker_box{Items:[{Slot:0b,tag:{RodModeShift:2b}}]} run scoreboard players set @s CAM_rod_time 15
setblock ~ 319 ~ air
say 1
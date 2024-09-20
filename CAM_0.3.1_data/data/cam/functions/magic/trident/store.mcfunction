setblock ~ 319 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
data modify block ~ 319 ~ Items[0].id set from entity @s SelectedItem.id
data modify block ~ 319 ~ Items[0].tag set from entity @s SelectedItem.tag
execute store result score #CAM_temp CAM_storm_tri run data get block ~ 319 ~ Items[0].tag.CAM_storm 1
execute if score #CAM_temp CAM_storm_tri matches 400.. run data remove block ~ 319 ~ Items[0].tag.CAM_storm
execute if score #CAM_temp CAM_storm_tri matches ..399 store result block ~ 319 ~ Items[0].tag.CAM_storm int 1 run scoreboard players get @s CAM_storm
execute if entity @s[tag=CAM_tri_reset] run data remove block ~ 319 ~ Items[0].tag.CAM_storm
loot replace entity @s weapon.mainhand 1 mine ~ 319 ~ minecraft:diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 319 ~ air
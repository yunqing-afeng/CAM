setblock ~ 319 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
execute if data block ~ ~ ~ Items[{Slot:17b}] run data modify block ~ 319 ~ Items[0] set from block ~ ~ ~ Items[{Slot:17b}]
execute unless data block ~ ~ ~ Items[{Slot:17b}] run data modify block ~ 319 ~ Items[0] set value {Slot:0b,id:"minecraft:air",Count:1b}
item replace block ~ ~ ~ container.17 with minecraft:firework_star{CustomModelData:9102099,display:{Name:"{\"translate\":\"item.cam.item_displayer_button_11\"}"},cam_display:1b,CAM_dis_bg:1b}
execute as @e[sort=nearest,limit=1,scores={CAM_diserror=1..}] run loot give @s mine ~ 319 ~ minecraft:diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 319 ~ air
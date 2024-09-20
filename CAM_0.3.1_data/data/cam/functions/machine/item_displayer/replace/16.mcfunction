setblock ~ 319 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
execute if data block ~ ~ ~ Items[{Slot:16b}] run data modify block ~ 319 ~ Items[0] set from block ~ ~ ~ Items[{Slot:16b}]
execute unless data block ~ ~ ~ Items[{Slot:16b}] run data modify block ~ 319 ~ Items[0] set value {Slot:0b,id:"minecraft:air",Count:1b}
item replace block ~ ~ ~ container.16 with minecraft:firework_star{CustomModelData:9102025,display:{Name:"{\"translate\":\"item.cam.item_displayer\"}"},CAM_dis_bg:1b,Output:1b}
execute as @e[sort=nearest,limit=1,scores={CAM_diserror=1..}] run loot give @s mine ~ 319 ~ minecraft:diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 319 ~ air
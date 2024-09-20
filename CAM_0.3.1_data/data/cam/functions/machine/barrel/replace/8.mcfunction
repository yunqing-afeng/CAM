setblock ~ 319 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
execute if data block ~ ~ ~ Items[{Slot:8b}] run data modify block ~ 319 ~ Items[0] set from block ~ ~ ~ Items[{Slot:8b}]
execute unless data block ~ ~ ~ Items[{Slot:8b}] run data modify block ~ 319 ~ Items[0] set value {Slot:0b,id:"minecraft:air",Count:1b}
item replace block ~ ~ ~ container.8 with minecraft:firework_star{CustomModelData:9102025,display:{Name:"{\"translate\":\"item.cam.wine_barrel\"}"},CAM_bg:1b}
execute as @e[sort=nearest,limit=1,scores={CAM_barrelerror=1..}] run loot give @s mine ~ 319 ~ minecraft:diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 319 ~ air
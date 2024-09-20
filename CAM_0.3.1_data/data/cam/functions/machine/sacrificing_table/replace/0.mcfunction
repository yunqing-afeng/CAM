setblock ~ 319 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
data modify block ~ 319 ~ Items[0] set from block ~ ~ ~ Items[0]
data modify block ~ ~ ~ Items[0] set value {id:"minecraft:firework_star",Count:1b,Slot:0b,tag:{CustomModelData:9102066,display:{Name:"{\"translate\":\"item.cam.sacrificing_table\"}"},CAM_bg:1b}}
execute as @e[sort=nearest,limit=1,scores={CAM_sacerror=1..}] run loot give @s mine ~ 319 ~ minecraft:diamond_pickaxe{isShulkerMarker:1b}
execute at @s run setblock ~ 319 ~ air
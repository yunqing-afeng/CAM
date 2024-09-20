setblock ~ 319 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
data modify block ~ 319 ~ Items set from block ~ ~ ~ Items
function cam:machine/barrel/add_sub
particle entity_effect ~ ~1 ~ 0.1 0.1 0.1 0 2
setblock ~ 319 ~ air
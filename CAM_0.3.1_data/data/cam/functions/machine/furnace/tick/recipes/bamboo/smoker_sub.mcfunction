data modify storage cam:furnace Items[{Slot:0b}] set from block ~ ~ ~ Items[{Slot:0b}]
data modify storage cam:furnace Items[{Slot:2b}] set from block ~ ~ ~ Items[{Slot:2b}]
data modify storage cam:furnace CookTime set from block ~ ~ ~ CookTime
tag @s add CAM_fur_bam_temp
data modify block ~ ~ ~ Items[{Slot:0b}].id set value "minecraft:potato"
schedule function cam:machine/furnace/tick/recipes/bamboo/smoker_sch 2t

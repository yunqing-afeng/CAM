data modify block ~ ~ ~ Items insert -1 value {Slot:2b,id:"minecraft:rabbit_hide",Count:1b}
execute store result block ~ ~ ~ Items[{Slot:0b}].Count byte 0.99 run data get block ~ ~ ~ Items[{Slot:0b}].Count
data modify block ~ ~ ~ CookTime set value 0s

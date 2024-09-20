data modify block ~ ~ ~ Items insert -1 value {Slot:2b,id:"firework_star",Count:1b,tag:{CustomModelData:9102123,id:"cam:copper_nugget",display:{Name:"[{\"translate\":\"item.cam.copper_nugget\",\"color\":\"white\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}}}
execute store result block ~ ~ ~ Items[{Slot:0b}].Count byte 0.99 run data get block ~ ~ ~ Items[{Slot:0b}].Count
data modify block ~ ~ ~ CookTime set value 0s

setblock ~ 319 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:suspicious_stew",Count:1b,tag:{display:{Name:"{\"translate\":\"item.cam.error_stew\",\"italic\":\"false\"}"},CustomModelData:9102127,id:"cam:error_stew",Effects:[{EffectId:0,EffectDuration:200},{EffectId:0,EffectDuration:200},{EffectId:0,EffectDuration:200},{EffectId:0,EffectDuration:200},{EffectId:0,EffectDuration:200}]}}]}
scoreboard players set #max random 33
scoreboard players set #min random 1
scoreboard players set #count random 5
function cam:random/multi/main

data modify block ~ 319 ~ Items[0].tag.Effects[0].EffectId set from storage random multi_1[0]
data modify block ~ 319 ~ Items[0].tag.Effects[1].EffectId set from storage random multi_1[1]
data modify block ~ 319 ~ Items[0].tag.Effects[2].EffectId set from storage random multi_1[2]
data modify block ~ 319 ~ Items[0].tag.Effects[3].EffectId set from storage random multi_1[3]
data modify block ~ 319 ~ Items[0].tag.Effects[4].EffectId set from storage random multi_1[4]

loot give @s mine ~ 319 ~ minecraft:diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 319 ~ air
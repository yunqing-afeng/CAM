item replace block ~ ~ ~ container.16 with suspicious_stew{display:{Name:"{\"translate\":\"item.cam.error_stew\",\"italic\":\"false\"}"},CustomModelData:9102127,id:"cam:error_stew",Effects:[{EffectId:0,EffectDuration:200},{EffectId:0,EffectDuration:200},{EffectId:0,EffectDuration:200},{EffectId:0,EffectDuration:200},{EffectId:0,EffectDuration:200}],Output:1b}
scoreboard players set #random_max random 33
scoreboard players set #random_min random 1
scoreboard players set #count random 5
function cam:random/multi/main

data modify block ~ ~ ~ Items[{Slot:16b}].tag.Effects[0].EffectId set from storage random multi_1[0]
data modify block ~ ~ ~ Items[{Slot:16b}].tag.Effects[1].EffectId set from storage random multi_1[1]
data modify block ~ ~ ~ Items[{Slot:16b}].tag.Effects[2].EffectId set from storage random multi_1[2]
data modify block ~ ~ ~ Items[{Slot:16b}].tag.Effects[3].EffectId set from storage random multi_1[3]
data modify block ~ ~ ~ Items[{Slot:16b}].tag.Effects[4].EffectId set from storage random multi_1[4]
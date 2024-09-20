data remove block ~ ~ ~ Items[{Slot:4b}].tag.CAM_Enchantments[{Slot:0b}]
data remove block ~ ~ ~ Items[{Slot:4b}].tag.CAM_Enchantments[{Slot:1b}]
data remove block ~ ~ ~ Items[{Slot:4b}].tag.CAM_Enchantments[{Slot:2b}]
data remove block ~ ~ ~ Items[{Slot:4b}].tag.CAM_Enchantments[{Slot:3b}]
data remove block ~ ~ ~ Items[{Slot:4b}].tag.Enchantments
execute unless block ~ ~ ~ barrel{Items:[{Slot:4b,tag:{CAM_inbuilt:1b}}]} run data remove block ~ ~ ~ Items[{Slot:4b}].tag.RepairCost
data remove block ~ ~ ~ Items[{Slot:4b}].tag.Damage

execute unless data block ~ ~ ~ Items[{Slot:4b}].tag.CAM_Enchantments[] run data remove block ~ ~ ~ Items[{Slot:4b}].tag.CAM_Enchantments

scoreboard players set #random_min random 1
scoreboard players set #random_max random 20
function cam:random/random
execute if score #result random matches 2 run data modify block ~ ~ ~ Items[{Slot:1b}].tag.CAM_Enchantments append value {id:"cam:failure"}
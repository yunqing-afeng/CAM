data modify block ~ 319 ~ Items[{Slot:0b}].id set from block ~ 319 ~ Items[{Slot:14b}].id
data modify block ~ 319 ~ Items[{Slot:0b}].tag set from block ~ 319 ~ Items[{Slot:14b}].tag
execute store result score @s CAM_barreldeg run data get block ~ 319 ~ Items[{Slot:0b}].tag.CAM_alcohol 1
execute store result score #temp CAM_barreldeg run data get block ~ 319 ~ Items[{Slot:0b}].tag.CAM_winesped 1

execute store result score @s CAM_barrellim run data get block ~ 319 ~ Items[{Slot:0b}].tag.CAM_winelimit 1
function cam:machine/barrel/execute/operation

execute if score @s CAM_barreldeg <= #CAM_temp CAM_barrellim run scoreboard players operation @s CAM_barreldeg += #temp CAM_barreldeg
execute if score @s CAM_barreldeg > #CAM_temp CAM_barrellim if score @s CAM_barreldeg <= @s CAM_barrellim run function cam:machine/barrel/execute/operation2
execute if score @s CAM_barreldeg > @s CAM_barrellim if score @s CAM_barreldeg <= #CAM_temp2 CAM_barrellim run function cam:machine/barrel/execute/operation3
execute if score @s CAM_barreldeg > #CAM_temp2 CAM_barrellim run function cam:machine/barrel/execute/operation4

execute store result block ~ 319 ~ Items[{Slot:0b}].tag.CAM_alcohol int 1 run scoreboard players get @s CAM_barreldeg
data modify block ~ ~ ~ Items[{Slot:14b}].id set from block ~ 319 ~ Items[{Slot:0b}].id
data modify block ~ ~ ~ Items[{Slot:14b}].tag set from block ~ 319 ~ Items[{Slot:0b}].tag

data remove block ~ 319 ~ Items[{Slot:0b}].tag
data remove block ~ 319 ~ Items[{Slot:14b}]
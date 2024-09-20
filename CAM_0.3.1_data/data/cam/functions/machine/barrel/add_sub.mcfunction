function cam:machine/barrel/examine
function cam:machine/barrel/execute
scoreboard players reset @s CAM_barrelcount
execute if data block ~ 319 ~ Items[{tag:{CAM_wine:1b}}] run function cam:machine/barrel/add_sub
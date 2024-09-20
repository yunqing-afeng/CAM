scoreboard players set #random_min random 0
scoreboard players set #random_max random 100
function cam:random/random
execute unless score @s CAM_jrrp matches 0..100 run scoreboard players operation @s CAM_jrrp = #result random

tellraw @s [{"text":"您今日的人品为：","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"score":{"objective":"CAM_jrrp","name":"@s"},"color":"gold","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
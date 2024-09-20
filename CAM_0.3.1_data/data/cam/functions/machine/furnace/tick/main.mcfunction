execute as @e[type=minecraft:armor_stand,tag=cam_furnace_like] at @s unless block ~ ~ ~ #uin:general/furnaces run kill @s

execute as @e[type=minecraft:armor_stand,tag=cam_blast_furnace] at @s align xyz if block ~ ~ ~ minecraft:blast_furnace{CookTime:99s} run function cam:machine/furnace/tick/check

function cam:machine/furnace/tick/recipes/fish/fish
function cam:machine/furnace/tick/recipes/bamboo/bamboo
function cam:machine/furnace/tick/recipes/leather/leather
function cam:machine/furnace/tick/recipes/copper/smelt
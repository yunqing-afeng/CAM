summon experience_orb ~ ~ ~ {Value:1,Count:1,Tags:["CAM_edification"],Motion:[0.0d,0.1d,0.0d]}
scoreboard players set #random_min random -100
scoreboard players set #random_max random 100
function cam:random/random
scoreboard players operation #x random = #result random
scoreboard players set #random_min random -100
scoreboard players set #random_max random 100
function cam:random/random
scoreboard players operation #z random = #result random

execute store result entity @e[type=experience_orb,sort=nearest,limit=1,tag=CAM_edification] Motion[0] double 0.001 run scoreboard players get #x random
execute store result entity @e[type=experience_orb,sort=nearest,limit=1,tag=CAM_edification] Motion[2] double 0.001 run scoreboard players get #z random

execute store result entity @e[type=experience_orb,sort=nearest,limit=1,tag=CAM_edification] Value int 1 run scoreboard players get #xp CAM_edi_xp
tag @e[tag=CAM_edification] remove CAM_edification
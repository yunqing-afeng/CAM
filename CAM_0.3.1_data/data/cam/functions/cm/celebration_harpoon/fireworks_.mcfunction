data modify entity @s Owner set from entity @a[tag=CAM_ch_owner,sort=nearest,limit=1] UUID

scoreboard players set @s CAM_ch_temp 30
scoreboard players set #random_min random 0
scoreboard players set #random_max random 5
function cam:random/random
scoreboard players operation @s CAM_ch_temp += #result random
scoreboard players set #random_min random 0
scoreboard players set #random_max random 6
function cam:random/random
scoreboard players operation @s CAM_ch_temp += #result random
execute store result entity @s LifeTime int 1 run scoreboard players get @s CAM_ch_temp
data modify entity @s PortalCooldown set value 1

tag @s remove CAM_ch_temp
tag @s add CAM_ch_temp2
tag @s add CAM_ch
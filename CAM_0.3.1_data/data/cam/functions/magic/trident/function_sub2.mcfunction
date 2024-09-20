summon minecraft:lightning_bolt ~ ~ ~
damage @s 192 magic
particle minecraft:nautilus ~ ~.5 ~ 0.125 0.125 0.125 1 300 normal
particle minecraft:nautilus ~ ~ ~ 0.125 0.125 0.125 30 300 normal
scoreboard players operation #CAM_temp AE_player_id = @e[type=trident,tag=CAM_choptrident,sort=nearest,limit=1] AE_player_id
execute as @a if score @s AE_player_id = #CAM_temp AE_player_id run advancement grant @s only cam:countryside_and_magic/trident_festival
execute as @e[type=trident,predicate=cam:misc/trident/festival,distance=..40] run tp ~ ~ ~
summon creeper ~ 256 ~ {Fuse:0s,Tags:[CAM_trident_festival],powered:1b}
tp @e[tag=CAM_trident_festival,type=creeper] ~ ~ ~

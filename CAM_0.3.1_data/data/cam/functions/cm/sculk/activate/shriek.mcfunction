setblock ~ ~ ~ sculk_shrieker[can_summon= true]
playsound minecraft:block.sculk_shrieker.shriek block @a ~ ~ ~ 2 0
playsound minecraft:entity.warden.heartbeat hostile @a ~ ~ ~

particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1 normal
particle minecraft:shriek 0 ~ ~ ~ 0 0 0 0 1 normal
particle minecraft:shriek 5 ~ ~ ~ 0 0 0 0 1 normal
particle minecraft:shriek 10 ~ ~ ~ 0 0 0 0 1 normal
particle minecraft:shriek 15 ~ ~ ~ 0 0 0 0 1 normal
particle minecraft:shriek 20 ~ ~ ~ 0 0 0 0 1 normal
particle minecraft:shriek 25 ~ ~ ~ 0 0 0 0 1 normal
particle minecraft:shriek 30 ~ ~ ~ 0 0 0 0 1 normal
particle minecraft:shriek 35 ~ ~ ~ 0 0 0 0 1 normal
particle minecraft:shriek 40 ~ ~ ~ 0 0 0 0 1 normal
particle minecraft:shriek 45 ~ ~ ~ 0 0 0 0 1 normal
particle minecraft:shriek 50 ~ ~ ~ 0 0 0 0 1 normal
particle minecraft:shriek 55 ~ ~ ~ 0 0 0 0 1 normal
particle minecraft:shriek 60 ~ ~ ~ 0 0 0 0 1 normal

execute as @a[distance=..20] run advancement grant @s only cam:countryside_and_magic/deep_echoing

kill @s
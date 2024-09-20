#失效
execute as @s[nbt={OnGround:1b}] at @s run function cam:magic/weapon/chain_blade/groundsound
execute at @s if block ~ ~ ~ water run playsound minecraft:entity.generic.splash neutral @a ~ ~ ~
execute at @s if block ~ ~ ~ water run function cam:magic/weapon/chain_blade/groundsound
execute at @s if block ~ ~ ~ #uin:tech/all[waterlogged=true] run playsound minecraft:entity.generic.splash neutral @a ~ ~ ~
execute at @s if block ~ ~ ~ #uin:tech/all[waterlogged=true] run function cam:magic/weapon/chain_blade/groundsound
execute at @s if block ~ ~ ~ #uin:general/seaplant run playsound minecraft:entity.generic.splash neutral @a ~ ~ ~
execute at @s if block ~ ~ ~ #uin:general/seaplant run function cam:magic/weapon/chain_blade/groundsound
#有效
execute as @s[nbt={OnGround:0b}] at @s run function cam:magic/weapon/chain_blade/test
tag @s add CAM_storm_owner
execute as @s unless score @s CAM_storm matches 400.. run tag @s remove CAM_storm
execute as @s at @s at @e[nbt={HurtTime:10s},distance=..5,limit=1] if score @s CAM_storm2 matches 1.. run particle explosion_emitter ~ ~ ~ 1 1 1 1 5 force
execute as @s at @s at @e[nbt={HurtTime:10s},distance=..5,limit=1] if score @s CAM_storm2 matches 1.. run particle minecraft:sweep_attack ~ ~1 ~ 0 0.125 0 1 5 force
execute as @s if score @s CAM_storm2 matches 1.. at @s as @e[nbt={HurtTime:10s},distance=..5] at @s run function cam:magic/new_enchants/stormchop/function
execute as @s if score @s CAM_storm2 matches 1.. at @s run scoreboard players set attack_knockback temp 200
execute as @s if score @s CAM_storm2 matches 1.. at @s as @e[distance=..5] as @s run function cam:knockback/knockback


execute as @s if score @s CAM_storm2 matches 1.. at @s run playsound minecraft:entity.lightning_bolt.impact weather @a ~ ~ ~ 1
execute as @s if score @s CAM_storm2 matches 1.. at @s run playsound minecraft:entity.lightning_bolt.thunder weather @a ~ ~ ~ 1
execute as @s if score @s CAM_storm2 matches 1.. run scoreboard players set @s CAM_storm 0
scoreboard players reset @a CAM_storm2
tag @s remove CAM_storm_owner
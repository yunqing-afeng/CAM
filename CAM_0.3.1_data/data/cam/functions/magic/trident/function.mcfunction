execute store result score @s CAM_storm_tri run data get entity @s Trident.tag.CAM_storm 1
scoreboard players operation #CAM_temp2 CAM_storm_tri = @s CAM_storm_tri
execute if score #CAM_temp2 CAM_storm_tri matches 400.. at @s as @e[nbt={HurtTime:10s},distance=..5] at @s run particle explosion_emitter ~ ~ ~ 1 1 1 1 0 force
execute if score #CAM_temp2 CAM_storm_tri matches 400.. at @s as @e[nbt={HurtTime:10s},distance=..5] at @s run function cam:magic/trident/function_
execute if score #CAM_temp2 CAM_storm_tri matches 400.. at @s run scoreboard players set attack_knockback temp 200
execute if score #CAM_temp2 CAM_storm_tri matches 400.. at @s as @e[distance=..5,type=!trident] as @s run function cam:knockback/knockback
execute if score #CAM_temp2 CAM_storm_tri matches 400.. at @s run playsound minecraft:entity.lightning_bolt.impact weather @a ~ ~ ~ 1
execute if score #CAM_temp2 CAM_storm_tri matches 400.. at @s run playsound minecraft:entity.lightning_bolt.thunder weather @a ~ ~ ~ 1
execute if score #CAM_temp2 CAM_storm_tri matches 400.. run data remove entity @s Trident.tag.CAM_storm
execute if score #CAM_temp2 CAM_storm_tri matches 400.. run scoreboard players set @s CAM_storm_tri 0
execute unless score #CAM_temp2 CAM_storm_tri matches 400.. run scoreboard players add @s CAM_storm_tri 90
execute unless score #CAM_temp2 CAM_storm_tri matches 400.. store result entity @s Trident.tag.CAM_storm int 1 run scoreboard players get @s CAM_storm_tri


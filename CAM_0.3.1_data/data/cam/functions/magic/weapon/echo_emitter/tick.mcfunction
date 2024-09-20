execute as @a store result score @s CAM_emit_count run clear @s echo_shard 0
execute as @a if score @s CAM_emit_trigger matches 1.. if predicate cam:misc/echo_emitter/uncharged unless entity @s[gamemode=creative] if score @s CAM_emit_count matches 1.. if score @s CAM_emit_timer matches ..0 at @s run function cam:magic/weapon/echo_emitter/charge
execute as @a if score @s CAM_emit_trigger matches 1.. if predicate cam:misc/echo_emitter/uncharged if entity @s[gamemode=creative] if score @s CAM_emit_timer matches ..0 at @s run function cam:magic/weapon/echo_emitter/charge


execute as @a if predicate cam:misc/echo_emitter/shoot at @s run function cam:magic/weapon/echo_emitter/shoot
execute as @e[type=armor_stand,tag=CAM_echo_shooter,nbt={PortalCooldown:0}] at @s positioned ^ ^ ^2 run function cam:magic/weapon/echo_emitter/sonic
execute as @a run scoreboard players set @s CAM_emit_trigger 0

execute as @a if score @s CAM_emit_timer matches 1 at @s run playsound minecraft:block.sculk_sensor.clicking player @s
execute as @a unless score @s CAM_emit_timer matches ..0 run scoreboard players remove @s CAM_emit_timer 1 
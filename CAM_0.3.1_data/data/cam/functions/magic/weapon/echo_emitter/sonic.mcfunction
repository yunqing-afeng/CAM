tag @s add CAM_shooter_temp
execute as @a if score @s AE_player_id = @e[type=armor_stand,limit=1,tag=CAM_shooter_temp] AE_player_id run tag @s add CAM_shootown_temp
function cam:magic/weapon/echo_emitter/ray
playsound minecraft:entity.warden.sonic_boom player @a ~ ~ ~ 1 1
scoreboard players set attack_knockback temp 400
execute as @e[tag=CAM_sonic_boom] run function cam:magic/weapon/echo_emitter/damage
execute as @e[tag=CAM_sonic_boom] run tag @s remove CAM_sonic_boom

tag @s remove CAM_shooter_temp
tag @a remove CAM_shootown_temp
kill @s
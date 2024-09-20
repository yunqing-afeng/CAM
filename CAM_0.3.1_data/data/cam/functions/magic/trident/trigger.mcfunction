advancement revoke @s only cam:countryside_and_magic/tridentchop
scoreboard players operation #CAM_temp AE_player_id = @s AE_player_id
execute as @e[type=trident,tag=CAM_choptrident] if score @s AE_player_id = #CAM_temp AE_player_id run function cam:magic/trident/function
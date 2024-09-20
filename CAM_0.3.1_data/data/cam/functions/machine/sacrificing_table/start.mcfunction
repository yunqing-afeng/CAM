function cam:machine/sacrificing_table/close
data modify block ~ ~ ~ Lock set value "Debug_key:24586118156410164115641158641"
scoreboard players operation #5 CAM_sac_number = @s CAM_sac_number
execute as @e[type=item,tag=cam_sac_item] if score @s CAM_sac_number = #5 CAM_sac_number run tag @s add CAM_sac_start
execute as @e[type=item,tag=cam_sac_item] if score @s CAM_sac_number = #5 CAM_sac_number run data modify entity @s PortalCooldown set value 100

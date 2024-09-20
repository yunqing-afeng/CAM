execute as @a if score @s CAM_ch_use matches 1.. if predicate cam:misc/celebration_harpoon/ch at @s run function cam:cm/celebration_harpoon/summon

execute as @a if score @s CAM_ch_timer matches 1.. run scoreboard players remove @s CAM_ch_timer 1

execute as @a unless score @s CAM_ch_timer matches -2147483648..2147483647 run scoreboard players set @a CAM_ch_timer 0
execute as @e[tag=CAM_ch_temp2] if data entity @s {PortalCooldown:0} at @s run function cam:cm/celebration_harpoon/fireworks__

scoreboard players reset @a CAM_ch_use
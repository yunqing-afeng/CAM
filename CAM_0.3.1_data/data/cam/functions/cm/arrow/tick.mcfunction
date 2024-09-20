execute as @e[type=#cam:shooter,nbt={inGround:1b},tag=!CAM_in] at @s if block ~ ~ ~ #cam:light_breakable run function cam:cm/arrow/extinguish_light
execute as @e[type=#cam:shooter,tag=!CAM_in] at @s if block ~ ~ ~ #uin:general/glass_panes run function cam:cm/arrow/extinguish_glass
tag @e[type=#cam:shooter,nbt={inGround:1b}] add CAM_in
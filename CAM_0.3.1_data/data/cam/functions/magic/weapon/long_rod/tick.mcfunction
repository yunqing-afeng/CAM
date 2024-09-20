execute as @a[scores={CAM_rod_damage=1..},nbt={SelectedItem:{tag:{CAM_rod:1b,RodModeShift:2b}}}] run function cam:magic/weapon/long_rod/replace
execute as @a[scores={CAM_rod_damage=1..,CAM_rod_time2=..0},nbt={SelectedItem:{tag:{CAM_rod:1b,RodModeShift:1b}}}] run function cam:magic/weapon/long_rod/replace

execute as @a[scores={CAM_rod_damage=1..},nbt={SelectedItem:{id:"minecraft:wooden_sword",tag:{id:"cam:bamboo_rod",CAM_rod:1b}}}] run scoreboard players set @s CAM_rod_time2 13
execute as @a[scores={CAM_rod_damage=1..},nbt={SelectedItem:{id:"minecraft:wooden_sword",tag:{id:"cam:wooden_long_rod",CAM_rod:1b}}}] run scoreboard players set @s CAM_rod_time2 16
execute as @a[scores={CAM_rod_damage=1..},nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{id:"cam:metal_long_rod",CAM_rod:1b}}}] run scoreboard players set @s CAM_rod_time2 20
execute as @a[scores={CAM_rod_damage=1..},nbt={SelectedItem:{id:"minecraft:stone_sword",tag:{id:"cam:snake_rod",CAM_rod:1b}}}] run scoreboard players set @s CAM_rod_time2 20

scoreboard players reset @a CAM_rod_damage
scoreboard players remove @a[scores={CAM_rod_time=1..}] CAM_rod_time 1
scoreboard players remove @a[scores={CAM_rod_time2=1..}] CAM_rod_time2 1
execute as @a[scores={CAM_rod_time=..0},nbt={SelectedItem:{tag:{CAM_rod:1b,RodModeShift:2b}}}] run function cam:magic/weapon/long_rod/replace
execute as @a[scores={CAM_rod_time=..0}] run scoreboard players set @s CAM_rod_time 0
execute as @a[scores={CAM_rod_time2=..0}] run scoreboard players set @s CAM_rod_time2 0
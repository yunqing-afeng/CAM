#判定与生成
tag @s add CAM_blade_temp
execute as @e[type=!fishing_bobber,dx=0,dy=0,dz=0] unless score @s AE_player_id = @e[type=fishing_bobber,tag=CAM_blade_temp,sort=nearest,limit=1] CAM_chain_owner positioned ~-1 ~-1 ~-1 if entity @s[type=!minecraft:item] run tag @s add find
execute as @e[type=!fishing_bobber,dx=0,dy=0,dz=0] unless score @s AE_player_id = @e[type=fishing_bobber,tag=CAM_blade_temp,sort=nearest,limit=1] CAM_chain_owner positioned ~-1 ~-1 ~-1 if entity @s[type=minecraft:item] run tag @s add find2
execute if entity @e[tag=find] if entity @s[tag=!first] run tag @s add CAM_shoot
execute if entity @e[tag=find2] if entity @s[tag=!first] run kill @s
#execute if entity @s[tag=CAM_shoot] as @e[tag=find] at @s anchored eyes positioned ^ ^ ^ run summon minecraft:arrow ~ ~1 ~ {damage:2.0d,pickup:0b,Motion:[0d,-1.0d,0d],Tags:["CAM_arrow"]}
#寻找持有者
#execute as @e[type=minecraft:arrow,tag=CAM_arrow] run scoreboard players operation @s CAM_chain_owner = @e[type=minecraft:fishing_bobber,sort=nearest,limit=1,tag=CAM_blade_temp] CAM_chain_owner
execute as @a if score @s AE_player_id = @e[type=minecraft:fishing_bobber,limit=1,tag=CAM_blade_temp] CAM_chain_owner run tag @s add CAM_chainowner
#数据处理
execute as @a if score @s AE_player_id = @e[type=minecraft:fishing_bobber,limit=1,tag=CAM_blade_temp] CAM_chain_owner if entity @e[tag=find] run scoreboard players add @s CAM_customdamage 1
#execute as @e[type=minecraft:fishing_bobber,tag=CAM_blade_temp] run data modify entity @s Owner set from entity @a[tag=CAM_chainowner,limit=1] UUID
execute as @e[tag=find] store result score @s CAM_chain_damage run data get entity @a[tag=CAM_chainowner,limit=1] SelectedItem.tag.dartsdamage
#附魔
execute as @e[tag=find] at @s run function cam:magic/weapon/chain_blade/enchantments
execute as @e[tag=find] run function cam:magic/weapon/chain_blade/test2
#音效与后处理
execute as @e[tag=CAM_shoot] run playsound minecraft:item.shield.break neutral @a ~ ~ ~
execute as @e[tag=CAM_shoot] run kill @s
execute as @e[tag=CAM_blade_temp,nbt={inGround:1b}] run kill @s
execute if entity @e[tag=!find] if entity @s[tag=first] run tag @s remove first
tag @e remove find
tag @e remove find2
tag @e remove find3
tag @e remove find4
tag @e remove CAM_blade_temp
tag @a remove CAM_chainowner
#激活幽匿尖啸体
execute as @e[type=item,nbt={Item:{tag:{id:"cam:echo_core"}}},tag=!CAM_echo_core] run tag @s add CAM_echo_core
execute as @e[tag=CAM_echo_core] at @s align xyz positioned ~.5 ~.5 ~.5 if block ~ ~ ~ minecraft:sculk_shrieker[can_summon= false] run function cam:cm/sculk/activate/shriek
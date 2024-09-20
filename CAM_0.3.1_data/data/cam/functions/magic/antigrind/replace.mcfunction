setblock ~ 319 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}

execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/0 run function cam:magic/antigrind/replace_1/0
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/1 run function cam:magic/antigrind/replace_1/1
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/2 run function cam:magic/antigrind/replace_1/2
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/3 run function cam:magic/antigrind/replace_1/3
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/4 run function cam:magic/antigrind/replace_1/4
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/5 run function cam:magic/antigrind/replace_1/5
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/6 run function cam:magic/antigrind/replace_1/6
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/7 run function cam:magic/antigrind/replace_1/7
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/8 run function cam:magic/antigrind/replace_1/8
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/9 run function cam:magic/antigrind/replace_1/9
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/10 run function cam:magic/antigrind/replace_1/10
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/11 run function cam:magic/antigrind/replace_1/11
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/12 run function cam:magic/antigrind/replace_1/12
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/13 run function cam:magic/antigrind/replace_1/13
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/14 run function cam:magic/antigrind/replace_1/14
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/15 run function cam:magic/antigrind/replace_1/15
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/16 run function cam:magic/antigrind/replace_1/16
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/17 run function cam:magic/antigrind/replace_1/17
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/18 run function cam:magic/antigrind/replace_1/18
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/19 run function cam:magic/antigrind/replace_1/19
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/20 run function cam:magic/antigrind/replace_1/20
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/21 run function cam:magic/antigrind/replace_1/21
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/22 run function cam:magic/antigrind/replace_1/22
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/23 run function cam:magic/antigrind/replace_1/23
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/24 run function cam:magic/antigrind/replace_1/24
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/25 run function cam:magic/antigrind/replace_1/25
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/26 run function cam:magic/antigrind/replace_1/26
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/27 run function cam:magic/antigrind/replace_1/27
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/28 run function cam:magic/antigrind/replace_1/28
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/29 run function cam:magic/antigrind/replace_1/29
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/30 run function cam:magic/antigrind/replace_1/30
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/31 run function cam:magic/antigrind/replace_1/31
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/32 run function cam:magic/antigrind/replace_1/32
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/33 run function cam:magic/antigrind/replace_1/33
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/34 run function cam:magic/antigrind/replace_1/34
execute unless score @s CAM_ifgrind matches 1 if predicate cam:misc/antigrind/35 run function cam:magic/antigrind/replace_1/35

execute store result score @s CAM_grindtype run data get block ~ 319 ~ Items[0].tag.CAM_grindtype
execute if score @s CAM_grindtype matches 0 unless data block ~ 319 ~ Items[0].tag.Enchantments[{id:"cam:antigrind"}] run data modify block ~ 319 ~ Items[0].tag.Enchantments append value {id:"cam:antigrind"}
execute if score @s CAM_grindtype matches 1 run function cam:magic/antigrind/type/1
execute if score @s CAM_grindtype matches 2 run function cam:magic/antigrind/type/2
execute if score @s CAM_grindtype matches 3 run function cam:magic/antigrind/type/3

execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/0 run function cam:magic/antigrind/replace_2/0
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/1 run function cam:magic/antigrind/replace_2/1
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/2 run function cam:magic/antigrind/replace_2/2
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/3 run function cam:magic/antigrind/replace_2/3
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/4 run function cam:magic/antigrind/replace_2/4
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/5 run function cam:magic/antigrind/replace_2/5
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/6 run function cam:magic/antigrind/replace_2/6
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/7 run function cam:magic/antigrind/replace_2/7
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/8 run function cam:magic/antigrind/replace_2/8
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/9 run function cam:magic/antigrind/replace_2/9
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/10 run function cam:magic/antigrind/replace_2/10
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/11 run function cam:magic/antigrind/replace_2/11
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/12 run function cam:magic/antigrind/replace_2/12
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/13 run function cam:magic/antigrind/replace_2/13
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/14 run function cam:magic/antigrind/replace_2/14
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/15 run function cam:magic/antigrind/replace_2/15
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/16 run function cam:magic/antigrind/replace_2/16
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/17 run function cam:magic/antigrind/replace_2/17
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/18 run function cam:magic/antigrind/replace_2/18
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/19 run function cam:magic/antigrind/replace_2/19
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/20 run function cam:magic/antigrind/replace_2/20
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/21 run function cam:magic/antigrind/replace_2/21
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/22 run function cam:magic/antigrind/replace_2/22
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/23 run function cam:magic/antigrind/replace_2/23
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/24 run function cam:magic/antigrind/replace_2/24
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/25 run function cam:magic/antigrind/replace_2/25
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/26 run function cam:magic/antigrind/replace_2/26
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/27 run function cam:magic/antigrind/replace_2/27
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/28 run function cam:magic/antigrind/replace_2/28
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/29 run function cam:magic/antigrind/replace_2/29
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/30 run function cam:magic/antigrind/replace_2/30
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/31 run function cam:magic/antigrind/replace_2/31
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/32 run function cam:magic/antigrind/replace_2/32
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/33 run function cam:magic/antigrind/replace_2/33
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/34 run function cam:magic/antigrind/replace_2/34
execute unless score @s CAM_ifgrind matches 2 if predicate cam:misc/antigrind/35 run function cam:magic/antigrind/replace_2/35

scoreboard players set @s CAM_ifgrind 0
setblock ~ 319 ~ air

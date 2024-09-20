#鱼叉系列
execute as @a[scores={harpoon_hit=1..}] at @s anchored eyes positioned ^ ^ ^2.5 run function cam:cm/tick_
scoreboard players reset @a harpoon_hit
#沙漠长矛
execute as @a[scores={spear_hit=1..},predicate=cam:misc/harpoon/0] at @s anchored eyes positioned ^ ^ ^2.5 run effect give @e[distance=..2.5,nbt={HurtTime:10s},sort=nearest,limit=1,type= #minecraft:desert_mobs] minecraft:weakness 5 1
scoreboard players reset @a spear_hit



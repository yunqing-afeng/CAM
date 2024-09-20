execute store result score @s CAM_tri_count if entity @e[type=trident,predicate=cam:misc/trident/festival,distance=..40]
execute as @e[type=trident,predicate=cam:misc/trident/festival,distance=..40] at @s if score #particle CAM_module matches 1 run particle electric_spark ~ ~ ~ 1 1 1 0.1 40
execute as @e[type=trident,predicate=cam:misc/trident/festival,distance=..40] at @s run effect give @s glowing 5 0 true
execute if score @s CAM_tri_count matches 0..4 as @e[nbt={HurtTime:10s},distance=..5] at @s run function cam:magic/new_enchants/stormchop/function
execute if score @s CAM_tri_count matches 5..9 as @e[nbt={HurtTime:10s},distance=..5] at @s run function cam:magic/trident/function_sub1
execute if score @s CAM_tri_count matches 10.. as @e[nbt={HurtTime:10s},distance=..5] at @s run function cam:magic/trident/function_sub2

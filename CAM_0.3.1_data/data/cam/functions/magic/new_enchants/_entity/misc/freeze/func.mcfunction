execute if score #temp CAM_enchant_lvl matches 1 run effect give @s minecraft:slowness 10 0
execute if score #temp CAM_enchant_lvl matches 2 run effect give @s minecraft:slowness 15 0
execute if score #temp CAM_enchant_lvl matches 3 run effect give @s minecraft:slowness 15 1
execute if score #temp CAM_enchant_lvl matches 4 run effect give @s minecraft:slowness 20 1
execute if score #temp CAM_enchant_lvl matches 5 run effect give @s minecraft:slowness 30 1
execute if entity @s[predicate=cam:enchant/freeze/on_fire] run damage @s 3 freeze
execute if entity @s[predicate=cam:enchant/freeze/on_fire] at @s run function cam:magic/new_enchants/freeze/extinguish
playsound minecraft:entity.player.hurt_freeze neutral @a
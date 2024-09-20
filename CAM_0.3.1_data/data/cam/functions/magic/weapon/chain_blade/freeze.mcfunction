execute store result score @s CAM_chain_freeze run data get entity @a[tag=CAM_chainowner,limit=1] SelectedItem.tag.CAM_Enchantments[{id:"cam:freeze"}].lvl
execute unless entity @s[type=#cam:frigid] if entity @s[type=#cam:fire_like] run damage @s 6 freeze
execute unless entity @s[type=#cam:frigid] if score @s CAM_chain_freeze matches 1 run effect give @s slowness 10 0
execute unless entity @s[type=#cam:frigid] if score @s CAM_chain_freeze matches 2 run effect give @s slowness 15 0
execute unless entity @s[type=#cam:frigid] if score @s CAM_chain_freeze matches 3 run effect give @s slowness 15 1
execute unless entity @s[type=#cam:frigid] if score @s CAM_chain_freeze matches 4 run effect give @s slowness 20 1
execute unless entity @s[type=#cam:frigid] if score @s CAM_chain_freeze matches 5 run effect give @s slowness 30 1

scoreboard players reset @s CAM_chain_freeze

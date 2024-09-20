execute if score @s CAM_addict matches 100.. run scoreboard players add @s CAM_addict_tick 1
execute if score @s CAM_addict_tick matches 40.. run scoreboard players remove @s CAM_addict 1
execute if score @s CAM_addict_tick matches 40.. run scoreboard players remove @s CAM_addict_tick 40
execute if score @s CAM_addict matches 1..100 run scoreboard players set @s CAM_addict 0
scoreboard players operation @s CAM_addict_temp = @s CAM_addict
scoreboard players operation @s CAM_addict_temp /= $wine_constant3 CAM_capacity
execute if score @s CAM_alcohol_deg < @s CAM_addict_temp run effect give @s minecraft:weakness 1 0
scoreboard players operation @s CAM_addict_temp = @s CAM_addict
scoreboard players operation @s CAM_addict_temp /= $wine_constant4 CAM_capacity
execute if score @s CAM_alcohol_deg < @s CAM_addict_temp run scoreboard players add @s CAM_withdrawal 1
execute unless score @s CAM_alcohol_deg < @s CAM_addict_temp if score @s CAM_withdrawal matches 1.. run scoreboard players remove @s CAM_withdrawal 10
execute if score @s CAM_withdrawal matches ..0 run scoreboard players reset @s CAM_withdrawal
execute if score @s CAM_withdrawal matches 2400.. run tag @s add CAM_withdrawal
execute unless score @s CAM_withdrawal matches 2400.. run tag @s remove CAM_withdrawal
execute as @a[tag=CAM_withdrawal] run effect give @s minecraft:wither 2 1
execute as @a[tag=CAM_withdrawal] if score @s CAM_advwithdrawl matches ..0 run advancement grant @s only cam:countryside_and_magic/lack_wine_die
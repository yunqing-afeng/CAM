scoreboard players remove @s CAM_catcher_functimer 1
execute if score @s CAM_catcher_functype matches 0 run attribute @s minecraft:generic.luck modifier add 5e566db4-450c-408b-be34-224833c3d54d "cam:dream_catcher" 1 add
execute if score @s CAM_catcher_functype matches 1 run effect give @s resistance 1 0 true
execute if score @s CAM_catcher_functype matches 2 run effect give @s haste 1 0 true
execute if score @s CAM_catcher_functype matches 3 run attribute @s minecraft:generic.armor_toughness modifier add 5e566db4-450c-408b-be34-224833c3d54d "cam:dream_catcher" 2 add
#execute if score @s CAM_catcher_functype matches 4 run tag @s add CAM_catcher_resistence
execute if score @s CAM_catcher_functype matches 5 run attribute @s minecraft:generic.attack_damage modifier add 5e566db4-450c-408b-be34-224833c3d54d "cam:dream_catcher" 0.1 multiply
execute if score @s CAM_catcher_functype matches 6 if score @s CAM_catcher_functimer_ matches 1 run effect give @s minecraft:regeneration 2 1
execute if score @s CAM_catcher_functype matches 7 run attribute @s minecraft:generic.max_health modifier add 5e566db4-450c-408b-be34-224833c3d54d "cam:dream_catcher" 2 add
execute if score @s CAM_catcher_functype matches 8 run attribute @s minecraft:generic.armor modifier add 5e566db4-450c-408b-be34-224833c3d54d "cam:dream_catcher" 2 add
execute if score @s CAM_catcher_functype matches 9 run attribute @s minecraft:generic.attack_speed modifier add 5e566db4-450c-408b-be34-224833c3d54d "cam:dream_catcher" 0.4 add
execute if score @s CAM_catcher_functype matches 10 run effect give @e[type=#uin:tech/mobs,distance=..5,type=!player] weakness 1 0 true
#execute if score @s CAM_catcher_functype matches 11 run
#execute if score @s CAM_catcher_functype matches 12 run
execute if score @s CAM_catcher_functype matches 13 run attribute @s minecraft:generic.knockback_resistance modifier add 5e566db4-450c-408b-be34-224833c3d54d "cam:dream_catcher" 0.2 add
execute if score @s CAM_catcher_functype matches 14 run effect give @s water_breathing 1 0 true
execute if score @s CAM_catcher_functype matches 15 run attribute @s minecraft:generic.movement_speed modifier add 5e566db4-450c-408b-be34-224833c3d54d "cam:dream_catcher" 0.2 multiply


scoreboard players remove @s CAM_catcher_functimer_ 1
execute if score @s CAM_catcher_functimer_ matches ..0 run scoreboard players set @s CAM_catcher_functimer_ 100
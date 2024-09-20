scoreboard players set #random_min random 1
scoreboard players set #random_max random 20
function cam:random/random
scoreboard players operation @s random = #result random
execute if score @a[tag=CAM_chainowner,limit=1] CAM_brgate matches 14.. if score @s random matches 0..4 if score #particle CAM_module matches 1 run particle minecraft:instant_effect ~ ~1.5 ~ 0.25 0.25 0.25 1 10 normal
execute if score @a[tag=CAM_chainowner,limit=1] CAM_brgate matches 14.. if score @s random matches 0..4 run scoreboard players add @s CAM_chain_damage 12
execute if score @s random matches 0..4 as @a[tag=CAM_chainowner,limit=1] if score @s CAM_brgate matches 14.. run damage @s 6 indirect_magic

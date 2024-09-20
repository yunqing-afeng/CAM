#初始判定craftsman
data modify entity @s ArmorItems[3] set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;1106961932,-59486626,-1822061052,-1476757789],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzQ4MWQwMGRmNDc4Y2ZiZjM5MjI2ODFlMTJhODc4Y2JjYjk2NDJiNTI1ZDQ2MDg3MTFjMmFiNjA0YWIzMDFhZSJ9fX0="}]}}}}
data modify entity @s CustomName set value "[{\"translate\":\"entity.cam.craftsman\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"
data modify entity @s CustomNameVisible set value 0b
data modify entity @s ArmorDropChances set value [0.0f,0.0f,0.0f,-1f]
tag @s add CAM_triggered1
tag @s add CAM_craftsman
tag @s add winterday_triggered
tag @s add CAM_craftlevel1
#交易
data remove entity @s Offers.Recipes[0]
data remove entity @s Offers.Recipes[0]

scoreboard players set #random_min random 1
scoreboard players set #random_max random 3
function cam:random/two_selected

execute if score #result1 random matches 1 run function cam:villager/fisherman/craftsman/fishbone
execute if score #result1 random matches 2 run function cam:villager/fisherman/craftsman/dream_catcher
execute if score #result1 random matches 3 run function cam:villager/fisherman/craftsman/honey_apple

execute if score #result2 random matches 1 run function cam:villager/fisherman/craftsman/fishbone
execute if score #result2 random matches 2 run function cam:villager/fisherman/craftsman/dream_catcher
execute if score #result2 random matches 3 run function cam:villager/fisherman/craftsman/honey_apple
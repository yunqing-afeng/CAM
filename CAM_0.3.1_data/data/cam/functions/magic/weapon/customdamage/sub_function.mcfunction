function cam:magic/weapon/customdamage/max

execute as @s store result score @s CAM_unbreaking run data get entity @s SelectedItem.tag.Enchantments.[{id:"minecraft:unbreaking"}].lvl
execute as @s if data entity @s {SelectedItem:{tag:{Enchantments:[{id:"unbreaking"}]}}} store result score @s CAM_unbreaking run data get entity @s SelectedItem.tag.Enchantments.[{id:"unbreaking"}].lvl
scoreboard players add @s CAM_unbreaking 1
scoreboard players set #random_min random 1
scoreboard players set #random_max random 65536
function cam:random/random
scoreboard players operation @s random = #result random
scoreboard players operation @s random *= @s CAM_unbreaking

execute as @s store result score @s CAM_duriable run data get entity @s SelectedItem.tag.Damage 1
scoreboard players add @s[scores={random=1..65536}] CAM_duriable 1
execute store result storage cam_damage Damage short 1 run scoreboard players get @s CAM_duriable
data modify block ~ 319 ~ Items[0].tag.Damage set from storage minecraft:cam_damage Damage

item replace entity @s weapon.mainhand with air
execute if score @s CAM_duriable > @s CAM_damagemax run data remove block ~ 319 ~ Items
loot replace entity @s weapon.mainhand 1 mine ~ 319 ~ minecraft:diamond_pickaxe{isShulkerMarker:1b}
scoreboard players remove @s CAM_customdamage 1
execute if entity @s[scores={CAM_customdamage=..-1},nbt={SelectedItem:{tag:{CustomDamage:1b}}}] run scoreboard players reset @s CAM_customdamage
execute if entity @s[scores={CAM_customdamage=1..},nbt={SelectedItem:{tag:{CustomDamage:1b}}}] run function cam:magic/weapon/customdamage/sub_function
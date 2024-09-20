#初始判定hunter
data modify entity @s ArmorItems[3] set value {id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:[I;525463102,-292272816,-1324066791,148990602],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTE3MTRjY2Q0MDE1YWUxYTIyNmU5OGRiZGMxMGJhZjBmMzdlZTNkOTdiM2RmM2Q3ZjNhMTNiYWRlMGU4MmZmZiJ9fX0="}]}}}}
data modify entity @s CustomName set value "[{\"translate\":\"entity.cam.hunter\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"
data modify entity @s CustomNameVisible set value 0b
data modify entity @s ArmorDropChances set value [0.0f,0.0f,0.0f,-1f]
tag @s add CAM_htriggered1
tag @s add CAM_hlevel1
#交易
data remove entity @s Offers.Recipes[-1]
data remove entity @s Offers.Recipes[-1]
function cam:villager/fletcher/hunter/exhaustion_type
execute store result score @s CAM_hunterlvl run data get entity @s VillagerData.level
function cam:villager/fletcher/hunter/deals
function cam:villager/fletcher/hunter/deals
data modify storage cam:villager hunter.reputation set value {}

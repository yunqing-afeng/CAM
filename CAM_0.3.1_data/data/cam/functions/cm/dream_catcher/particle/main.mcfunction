execute store result score @s CAM_catcher_facing run data get entity @s Facing
execute store result score @s CAM_catcher_ro run data get entity @s ItemRotation

execute unless score @s CAM_catcher_facing matches 0..1 unless score @s CAM_catcher_ro matches 0 run data modify entity @s ItemRotation set value 0



execute if score #particle CAM_module matches 1 run function cam:cm/dream_catcher/particle/sub
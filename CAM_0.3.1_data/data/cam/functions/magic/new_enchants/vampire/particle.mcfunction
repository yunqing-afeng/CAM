particle minecraft:happy_villager ~ ~1 ~ 0.2 0.4 0.2 0.5 10 normal
scoreboard players set @s CAM_vampire_lock 1
summon minecraft:area_effect_cloud ~ ~1 ~ {Effects:[{Id:10,Amplifier:10,Duration:1}],Age:0,Duration:10,Color:0,Radius:0.5,RadiusOnUse:0,RadiusPerTick:0,Tags:["vampire"]}
execute store result entity @e[type=minecraft:area_effect_cloud,sort=nearest,limit=1,tag=vampire,distance=..1] Effects[0].Duration float 0.05 run scoreboard players get @s CAM_damage2
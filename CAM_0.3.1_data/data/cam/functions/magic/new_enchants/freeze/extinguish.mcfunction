execute if entity @s[type=player] run summon potion ~ ~-.4 ~ {Item:{id:"minecraft:splash_potion",Count:1b,tag:{Potion:"minecraft:water",CustomPotionColor:11649535}},LeftOwner:true,OnGround:1b,Tags:["CAM_temp"],Silent:1b,Motion:[0d,1d,0d]}
execute unless entity @s[type=player] run data modify entity @s Fire set value -1
playsound minecraft:block.fire.extinguish neutral @a
scoreboard players set @s CAM_freezetimer 3
#summon area_effect_cloud ~ ~ ~ {Potion:"minecraft:water",Duration:10000,Radius:3}

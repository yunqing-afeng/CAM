execute store result score @s CAM_rodtemp run data get block ~ 319 ~ Items[0].tag.CustomModelData 1
scoreboard players add @s CAM_rodtemp 1
execute store result block ~ 319 ~ Items[0].tag.CustomModelData int 1 run scoreboard players get @s CAM_rodtemp

execute store result score @s CAM_rodtemp run data get block ~ 319 ~ Items[0].tag.AttributeModifiers.[{AttributeName:"generic.attack_damage"}].Amount 1
scoreboard players add @s CAM_rodtemp 1
execute store result block ~ 319 ~ Items[0].tag.AttributeModifiers.[{AttributeName:"generic.attack_damage"}].Amount int 1 run scoreboard players get @s CAM_rodtemp

execute store result score @s CAM_rodtemp run data get block ~ 319 ~ Items[0].tag.AttributeModifiers.[{AttributeName:"generic.attack_speed"}].Amount 1
scoreboard players add @s CAM_rodtemp 20
execute store result block ~ 319 ~ Items[0].tag.AttributeModifiers.[{AttributeName:"generic.attack_speed"}].Amount int 1 run scoreboard players get @s CAM_rodtemp

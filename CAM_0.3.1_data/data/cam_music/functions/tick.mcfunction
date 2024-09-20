#移除
execute as @e[type=minecraft:armor_stand,tag=custom_music] at @s unless data block ~ ~ ~ RecordItem run function music:clear
#使用
execute as @a[scores={music_trigger=1..}] at @s run function music:trigger
scoreboard players reset @a music_trigger

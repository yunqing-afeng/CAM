#放置与破坏处理
execute as @s at @s unless block ~ ~ ~ minecraft:lantern run function cam:cm/palace_lantern/clear
execute as @s run data modify entity @s Fire set value 32767s

#种类判断和外观变化
execute as @s at @s if entity @a[distance=..20] run function cam:cm/palace_lantern/stage
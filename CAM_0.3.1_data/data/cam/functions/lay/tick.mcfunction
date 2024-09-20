execute store result score $day CAM_univar run time query day
execute store result score $time CAM_univar run time query daytime
execute if score $day CAM_univar matches 8.. run function cam:lay/loop
execute if predicate cam:misc/rain run scoreboard players set $weather CAM_univar 1
execute if predicate cam:misc/thunder run scoreboard players set $weather CAM_univar 2
execute unless predicate cam:misc/rain unless predicate cam:misc/thunder run scoreboard players set $weather CAM_univar 0

#jrrp
execute if score $time CAM_univar matches 0 run scoreboard players set @a CAM_jrrp -1
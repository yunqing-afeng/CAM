scoreboard players set @s CAM_wfilter -1
execute store success score @s CAM_wfilter run data modify storage cam:warden filter set from entity @s UUID
execute if score @s CAM_wfilter matches 0 run scoreboard players add #temp CAM_wfilter 1
scoreboard players set #random_min random 1
scoreboard players set #random_max random 500
execute if score $day CAM_univar matches 4 if score $time CAM_univar matches 13188..22812 unless score $time CAM_univar matches 17000..19000 if score #result random matches 13 run function cam:monster/skeleton/phantom
execute if score $day CAM_univar matches 4 if score $time CAM_univar matches 17000..19000 if score #result random matches 11..15 run function cam:monster/skeleton/phantom
tag @s add CAM_sktrigger
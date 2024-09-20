execute store result score @s CAM_wardenlist if data entity @s anger.suspects[]

execute if score @s CAM_wardenlist matches 1.. if entity @e[type=allay,distance=..24] run function cam:monster/warden/allay/suspect_
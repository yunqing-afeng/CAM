scoreboard players set #xp CAM_edi_xp 0

execute if score @s CAM_edi_xp matches 1..11 run scoreboard players operation #xp CAM_edi_xp = @s CAM_edi_xp
execute if score @s CAM_edi_xp matches 11..16 run scoreboard players set #xp CAM_edi_xp 11
execute if score @s CAM_edi_xp matches 17..36 run scoreboard players set #xp CAM_edi_xp 17
execute if score @s CAM_edi_xp matches 37..72 run scoreboard players set #xp CAM_edi_xp 37
execute if score @s CAM_edi_xp matches 73..148 run scoreboard players set #xp CAM_edi_xp 73
execute if score @s CAM_edi_xp matches 149..306 run scoreboard players set #xp CAM_edi_xp 149
execute if score @s CAM_edi_xp matches 307..616 run scoreboard players set #xp CAM_edi_xp 307
execute if score @s CAM_edi_xp matches 617..1236 run scoreboard players set #xp CAM_edi_xp 617
execute if score @s CAM_edi_xp matches 1237..2476 run scoreboard players set #xp CAM_edi_xp 1237
execute if score @s CAM_edi_xp matches 2477.. run scoreboard players set #xp CAM_edi_xp 2477

execute if score #xp CAM_edi_xp matches 1.. run scoreboard players operation @s CAM_edi_xp -= #xp CAM_edi_xp
function cam:magic/new_enchants/edification/xp_give

execute if score @s CAM_edi_xp matches 1.. run function cam:magic/new_enchants/edification/xp


data modify storage cam bone_arrow set from entity @s
data remove storage cam bone_arrow.CustomPotionEffects
data remove storage cam bone_arrow.Potion

summon arrow ~ ~ ~ {Tags:[CAM_bone_arrow,CAM_bone_arrow_temp]}
data modify entity @e[sort=nearest,limit=1,type=arrow,tag=CAM_bone_arrow_temp] {} merge from storage cam bone_arrow
tag @e[tag=CAM_bone_arrow_temp] remove CAM_bone_arrow_temp
kill @s
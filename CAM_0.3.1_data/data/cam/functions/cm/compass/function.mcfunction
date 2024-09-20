tag @s add CAM_compass_tar
loot spawn ~ ~ ~ loot cam:misc/compass_map
execute as @e[nbt={Item:{tag:{cam_compass:2b}}}] run tag @s add CAM_compass_src
execute as @e[nbt={Item:{tag:{cam_compass:3b}}}] run tag @s add CAM_compass_src
function cam:cm/compass/function_
kill @e[tag=CAM_compass_src]
data remove entity @s Item.tag.cam_compass
tag @s remove CAM_compass_tar
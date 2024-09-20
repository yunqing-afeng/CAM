data modify storage cam:sacrifice Items set from block ~ ~ ~ Items
setblock ~ ~ ~ air
tag @s add CAM_sac_close
function cam:machine/sacrificing_table/replace
tag @s remove CAM_sac_close
execute positioned ~ ~1 ~ run kill @e[type=item,tag=cam_sac_item,limit=1,sort=nearest,distance=..0.5]
function cam:machine/sacrificing_table/item
data modify block ~ ~ ~ Items set from storage cam:sacrifice Items
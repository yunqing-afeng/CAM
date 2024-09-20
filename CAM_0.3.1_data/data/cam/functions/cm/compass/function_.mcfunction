data modify entity @s Item.tag.LodestonePos.X set from entity @e[limit=1,sort=nearest,tag=CAM_compass_src] Item.tag.Decorations[0].x
data modify entity @s Item.tag.LodestonePos.Z set from entity @e[limit=1,sort=nearest,tag=CAM_compass_src] Item.tag.Decorations[0].z

execute if data entity @e[limit=1,sort=nearest,tag=CAM_compass_src] {Item:{tag:{cam_compass:2b}}} run data modify entity @s Item.tag.CAM_compass_type set value 2b
execute if data entity @e[limit=1,sort=nearest,tag=CAM_compass_src] {Item:{tag:{cam_compass:3b}}} run data modify entity @s Item.tag.CAM_compass_type set value 3b
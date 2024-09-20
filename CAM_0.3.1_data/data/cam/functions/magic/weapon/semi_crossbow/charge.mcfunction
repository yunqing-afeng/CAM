data modify block ~ 319 ~ Items[0].tag.CAM_semibow_candidates append value {id:"minecraft:arrow",Count:1b}
data modify block ~ 319 ~ Items[0].tag.CAM_semibow_candidates[-1].id set from entity @e[type=armor_stand,tag=CAM_semibow_temp,limit=1,sort=nearest] ArmorItems[3].id
data modify block ~ 319 ~ Items[0].tag.CAM_semibow_candidates[-1].tag set from entity @e[type=armor_stand,tag=CAM_semibow_temp,limit=1,sort=nearest] ArmorItems[3].tag


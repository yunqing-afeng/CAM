execute as @a[tag=CAM_semibow_detect,predicate=cam:misc/semibow/charged] at @s run function cam:magic/weapon/semi_crossbow/scan
execute as @a[tag=CAM_semibow_detect] run tag @s remove CAM_semibow_detect

execute as @a at @s if predicate cam:misc/semibow/shoot run function cam:magic/weapon/semi_crossbow/replace
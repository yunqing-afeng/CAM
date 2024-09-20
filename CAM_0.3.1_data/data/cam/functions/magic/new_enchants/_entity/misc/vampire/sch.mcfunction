execute as @a[tag=CAM_vavic] on attacker at @s run function cam:magic/new_enchants/_entity/misc/vampire/random
execute as @a[tag=CAM_vavic] run scoreboard players operation $1 CAM_vampire_amt = @s CAM_htracer_delta
#execute as @a[tag=CAM_vavic] run scoreboard players operation $2 CAM_vampire_amt = @s CAM_htracer_lt
execute as @a[tag=CAM_vavic] run tag @s remove CAM_vavic

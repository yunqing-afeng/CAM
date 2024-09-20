advancement revoke @s only cam:enchants/vampire

#scoreboard players operation @s CAM_htracer_delta = @s CAM_htracer
#scoreboard players operation @s CAM_htracer_delta -= @s CAM_htracer_lt

tag @s add CAM_vavic
#execute as @a[tag=CAM_vavic] on attacker at @s run function cam:magic/new_enchants/_entity/misc/vampire/random
#tag @s remove CAM_vavic
schedule function cam:magic/new_enchants/_entity/misc/vampire/sch 1t
execute as @a[predicate=cam:misc/float] at @s if block ~ ~ ~ #cam:water_like run function cam:cm/float/give
#execute as @a[tag=CAM_float] at @s unless predicate cam:misc/float run function cam:cm/float/strip
#execute as @a[tag=CAM_float] at @s if predicate cam:misc/float unless block ~ ~ ~ #cam:water_like run function cam:cm/float/strip

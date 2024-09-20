scoreboard players set #random_min random 1
scoreboard players set #random_max random 100
function cam:random/random
scoreboard players operation @e[type=vindicator,tag=Anger_Of_Guard,limit=1] random = #result random
execute at @e[tag=Anger_Of_Guard,scores={random=1..40}] if score #particle CAM_module matches 1 run particle minecraft:angry_villager ~ ~0.25 ~ 0.3 0.2 0.3 0.25 1 normal
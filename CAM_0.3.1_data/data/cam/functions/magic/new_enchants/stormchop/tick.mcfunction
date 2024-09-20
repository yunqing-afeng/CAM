execute as @a unless predicate cam:enchant/stormchop run scoreboard players reset @s CAM_storm
execute as @a[tag=!CAM_storm] run function cam:magic/new_enchants/stormchop/tick__
execute as @a[tag=CAM_storm] at @s run function cam:magic/new_enchants/stormchop/tick_

execute as @a[scores={CAM_storm=1..},predicate=cam:enchant/stormchop] unless score @s CAM_tyrant_power > @s CAM_tyr_dead_2 run title @s actionbar {"translate":"enchantment.cam.general","with":[{"translate":"title.cam.storm","color": "blue"},{"score":{"name": "*","objective": "CAM_storm"},"color": "aqua"}]}
execute as @a if predicate cam:enchant/stormchop if score @s CAM_storm matches ..0 unless entity @s[tag=CAM_expiate] run title @s actionbar {"text":""}
execute as @a unless predicate cam:enchant/stormchop unless entity @s[tag=CAM_expiate] run title @s actionbar {"text":""}
execute as @a at @s run function cam:magic/new_enchants/stormchop/particle
execute as @e[type=item,nbt={Item:{tag:{CAM_Enchantments:[{id:"cam:stormchop"}]}}}] at @s run particle nautilus ~ ~ ~ 0 0 0 0.7 1 normal
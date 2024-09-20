execute as @a if predicate cam:misc/dream_catcher/place run tag @s add CAM_catcher_put_enable
execute as @a[tag=CAM_catcher_put_enable,predicate=cam:misc/dream_catcher/mainhand] store result score @s CAM_catcher_type run data get entity @s SelectedItem.tag.CAM_catcher_type
execute as @a[tag=CAM_catcher_put_enable,predicate=cam:misc/dream_catcher/offhand] store result score @s CAM_catcher_type run data get entity @s Inventory[{Slot:-106b}].tag.CAM_catcher_type
execute as @a[tag=CAM_catcher_put_enable,scores={CAM_catcher_put=1..}] at @s run function cam:cm/dream_catcher/place
execute as @e[type=item,predicate=cam:misc/dream_catcher/clear,tag=!CAM_knot_tri] at @s run function cam:cm/dream_catcher/clear
execute as @e[type=item_frame,tag=CAM_dream_catcher] unless data entity @s Item run kill @s
execute as @e[type=item,predicate=cam:misc/dream_catcher/dream_catcher] run function cam:cm/dream_catcher/clear_
scoreboard players reset @a CAM_catcher_put


execute as @e[type=item_frame,tag=CAM_dream_catcher] run function cam:cm/dream_catcher/particle/main
execute as @e[type=item_frame,tag=CAM_dream_catcher] if score @s CAM_catcher_functimer matches 1.. run scoreboard players remove @s CAM_catcher_functimer 1


execute as @a if score @s CAM_catcher_functimer matches 1.. run function cam:cm/dream_catcher/effect
execute as @a unless score @s CAM_catcher_functimer matches 1.. run function cam:cm/dream_catcher/deffect

execute as @a[tag=CAM_catcher_resistence] if score @s CAM_catcher_functimer matches 1.. at @s run function cam:cm/dream_catcher/resistence

execute as @a unless predicate cam:misc/dream_catcher/place run tag @s remove CAM_catcher_put_enable
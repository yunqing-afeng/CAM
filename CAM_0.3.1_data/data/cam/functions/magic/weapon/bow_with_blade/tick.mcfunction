execute as @a[scores={CAM_bowdamage=1..},nbt={SelectedItem:{tag:{id:"cam:bow_with_blade"}}}] run scoreboard players add @s CAM_customdamage 1
execute as @a[scores={CAM_bowdamage=1..},nbt={SelectedItem:{tag:{id:"cam:falcon"}}}] run scoreboard players add @s CAM_customdamage 1
scoreboard players reset @a CAM_bowdamage
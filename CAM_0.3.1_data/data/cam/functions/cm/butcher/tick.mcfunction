execute as @a[scores={CAM_butcher=1..}] at @s if predicate cam:misc/butcher as @e[distance=..2.5,nbt={HurtTime:10s},type=#cam:animal,sort=nearest,limit=1] run damage @s 6 cam:butcher
execute as @a[scores={CAM_butcher=1..}] at @s if predicate cam:misc/butcher_ as @e[distance=..2.5,nbt={HurtTime:10s},type=#cam:pig_like,sort=nearest,limit=1] run damage @s 18 cam:butcher

scoreboard players reset @a CAM_butcher

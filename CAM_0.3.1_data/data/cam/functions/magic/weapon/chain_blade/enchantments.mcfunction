#附魔
#execute as @s if entity @a[predicate=cam:weapon/fire_aspect,tag=CAM_chainowner,limit=1] run data modify entity @s Fire set value 2000s 
execute as @s if entity @a[predicate=cam:weapon/sharpness,tag=CAM_chainowner,limit=1] run function cam:magic/weapon/chain_blade/sharp
execute at @s as @e[type=!fishing_bobber,type=!minecraft:arrow,dx=0,dy=0,dz=0] if entity @s[type=#uin:custom/graveborn] as @e[type=minecraft:arrow,tag=CAM_arrow,sort=nearest,limit=1] if entity @a[predicate=cam:weapon/smite,tag=CAM_chainowner,limit=1] run function cam:magic/weapon/chain_blade/smite
execute at @s as @e[type=!fishing_bobber,type=!minecraft:arrow,dx=0,dy=0,dz=0] if entity @s[type=#uin:tech/arthropods] as @e[type=minecraft:arrow,tag=CAM_arrow,sort=nearest,limit=1] if entity @a[predicate=cam:weapon/bane_of_arthropods,tag=CAM_chainowner,limit=1] run function cam:magic/weapon/chain_blade/bane_of_arthropods
#祭祀附魔
execute as @s if entity @a[predicate=cam:weapon/poison,tag=CAM_chainowner,limit=1] run function cam:magic/weapon/chain_blade/poison
execute as @s if entity @a[predicate=cam:weapon/wither,tag=CAM_chainowner,limit=1] run function cam:magic/weapon/chain_blade/wither
execute as @s if entity @a[predicate=cam:weapon/freeze,tag=CAM_chainowner,limit=1] run function cam:magic/weapon/chain_blade/freeze
execute as @s if entity @a[predicate=cam:weapon/decay,tag=CAM_chainowner,limit=1] run function cam:magic/weapon/chain_blade/decay
execute as @s if entity @a[predicate=cam:weapon/rattlesnake,tag=CAM_chainowner,limit=1] run function cam:magic/weapon/chain_blade/rattlesnake
execute as @s if entity @a[predicate=cam:weapon/bloodrage,tag=CAM_chainowner,limit=1] run function cam:magic/weapon/chain_blade/bloodrage

execute as @s if entity @a[predicate=cam:weapon/vampire,tag=CAM_chainowner,limit=1] run function cam:magic/weapon/chain_blade/vampire
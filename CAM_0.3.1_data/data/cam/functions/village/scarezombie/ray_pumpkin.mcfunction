execute if entity @s[distance=..5] if block ~ ~ ~ #cam:pumpkins align xyz run summon minecraft:armor_stand ~0.5 ~ ~0.5 {Invulnerable:1b,Invisible:1b,NoGravity:1b,Tags:["CAM_scarezombie"],Marker:1b}
execute if entity @s[distance=..5] unless block ~ ~ ~ #cam:pumpkins positioned ^ ^ ^0.005 run function cam:village/scarezombie/ray_pumpkin
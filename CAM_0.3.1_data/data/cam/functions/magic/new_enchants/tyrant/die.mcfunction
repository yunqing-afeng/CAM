summon creeper ~ ~ ~ {Fuse:0,ignited:1b,Tags:["CAM_scourge"]}
execute if score @s CAM_tyrant_limit matches 100.. run data modify entity @e[limit=1,tag=CAM_scourge,sort=nearest] powered set value 1b
#tellraw @a {"translate":"enchantment.cam.general","with":[{"selector":"@s"},{"translate":"title.cam.die_tyrant"}],"color": "white"}
advancement grant @s only cam:countryside_and_magic/punishment
scoreboard players set @s CAM_tyrant_power 0
damage @s 100000 cam:tyrant
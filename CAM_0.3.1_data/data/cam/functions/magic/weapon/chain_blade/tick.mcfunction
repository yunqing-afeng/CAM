#手持
execute as @a[predicate=cam:weapon/chain_blade/0] at @s run function cam:magic/weapon/chain_blade/replace

#检查完整性
execute as @a[predicate=cam:weapon/chain_blade/auxiliary] unless predicate cam:weapon/chain_blade/main run clear @s minecraft:fishing_rod{CAM_chainblade:2b}
execute as @a store result score @s CAM_chain_sub run clear @s minecraft:fishing_rod{CAM_chainblade:2b} 0
execute as @a[scores={CAM_chain_sub=1}] unless predicate cam:weapon/chain_blade/auxiliary run clear @s minecraft:fishing_rod{CAM_chainblade:2b}
execute as @a[scores={CAM_chain_sub=2..}] run clear @s minecraft:fishing_rod{CAM_chainblade:2b} 1
execute as @a[nbt={Inventory:[{tag:{CAM_chainblade:1b}}]}] unless predicate cam:weapon/chain_blade/auxiliary run function cam:magic/weapon/chain_blade/forceset/return
execute as @e[type=minecraft:item,predicate=cam:weapon/chain_blade/main_] run data modify entity @s Item.tag merge value {id:"cam:chain_blade",CustomModelData:9102031,CAM_chainblade:0b,display:{Name:"[{\"translate\":\"item.cam.chain_blade\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}}
kill @e[type=minecraft:item,predicate=cam:weapon/chain_blade/auxiliary_]


#远程
execute as @a[scores={CAM_chain_use=1..},predicate=cam:weapon/chain_blade/auxiliary] at @s run tag @e[type=minecraft:fishing_bobber,limit=1,sort=nearest,distance=1..] add CAM_chainblade
execute as @e[type=minecraft:fishing_bobber,tag=CAM_chainblade,tag=!CAM_tested] run scoreboard players operation @s CAM_chain_owner = @a[scores={CAM_chain_use=1..}] AE_player_id
execute as @e[type=minecraft:fishing_bobber,tag=CAM_chainblade,tag=!CAM_tested] run tag @s add CAM_tested
tag @e[type=fishing_bobber,tag=!start] add first
tag @e[type=fishing_bobber] add start

#副刀
execute as @e[type=fishing_bobber,tag=CAM_chainblade] at @s run function cam:magic/weapon/chain_blade/function

execute as @e[type=minecraft:arrow,nbt={inGround:1b},tag=CAM_arrow] run kill @s
scoreboard players set @a CAM_chain_use 0
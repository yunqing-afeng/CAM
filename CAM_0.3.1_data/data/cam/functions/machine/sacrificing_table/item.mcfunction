scoreboard players operation #3 CAM_sac_number = @s CAM_sac_number
execute as @e[type=item,tag=cam_sac_item] if score @s CAM_sac_number = #3 CAM_sac_number run scoreboard players set #4 CAM_sac_number 1
execute unless score #4 CAM_sac_number matches 1 run summon item ~ ~1 ~ {Item:{Count:1b,id:"minecraft:emerald",tag:{CustomModelData:9102012,Enchantments:[{}],display:{Name:"[{\"translate\":\"item.cam.sapphire\",\"italic\":\"false\"}]"},id:"cam:sapphire"}},CustomNameVisible:0b,PickupDelay:32767,Age:-32768,Tags:["cam_sac_item","cam_sac_temp"]}
execute as @e[type=item,tag=cam_sac_temp] run scoreboard players operation @s CAM_sac_number = #3 CAM_sac_number
execute as @e[type=item,tag=cam_sac_temp] run tag @s remove cam_sac_temp

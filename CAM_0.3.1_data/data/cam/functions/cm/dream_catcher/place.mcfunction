tag @s add CAM_catcher_temp
execute as @e[type=item_frame,tag=!CAM_frame_test,sort=nearest,limit=1] run tag @s add CAM_dream_catcher
execute as @e[type=item_frame,tag=!CAM_frame_test,tag=CAM_dream_catcher,sort=nearest,limit=1] run data modify entity @s {} merge value {Item:{id:"minecraft:item_frame",Count:1b,tag:{id:"cam:dream_catcher",display:{Name:"[{\"translate\":\"item.cam.dream_catcher\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]",Lore:["{\"translate\":\"lore.cam.dc.clover\"}"]},CAM_dream_catcher:1b,CustomModelData:9105001,CAM_catcher_type:0}},CustomNameVisible:0b,Invisible:1b}
scoreboard players operation @e[type=item_frame,tag=!CAM_frame_test,tag=CAM_dream_catcher,sort=nearest,limit=1] CAM_catcher_type = @s CAM_catcher_type 
execute as @e[type=item_frame,tag=!CAM_frame_test,tag=CAM_dream_catcher,sort=nearest,limit=1] run function cam:cm/dream_catcher/type
execute as @e[type=item_frame,tag=!CAM_frame_test,tag=CAM_dream_catcher,sort=nearest,limit=1] if data entity @s {Facing:0b} run function cam:cm/dream_catcher/place_
tag @s remove CAM_catcher_temp
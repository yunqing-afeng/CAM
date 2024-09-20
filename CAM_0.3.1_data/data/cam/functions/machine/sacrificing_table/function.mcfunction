#检测上方方块
execute if predicate cam:sacrifice/air if entity @s[tag=!CAM_sac_ready] run playsound minecraft:block.beacon.activate block @a ~ ~ ~ 1 1
execute if predicate cam:sacrifice/air if entity @s[tag=!CAM_sac_ready] run tag @s add CAM_sac_ready
execute unless predicate cam:sacrifice/air if entity @s[tag=CAM_sac_ready] run playsound minecraft:block.beacon.deactivate block @a ~ ~ ~ 1 1
execute unless predicate cam:sacrifice/air if entity @s[tag=CAM_sac_ready] run tag @s remove CAM_sac_ready
#断言处理
data modify entity @s ArmorItems[2] set value {id:"minecraft:stone",Count:1b}
data modify entity @s ArmorItems[2].id set from block ~ ~ ~ Items[{Slot:4b}].id
data modify entity @s ArmorItems[2].tag set from block ~ ~ ~ Items[{Slot:4b}].tag

data modify entity @s ArmorItems[1] set value {id:"minecraft:stone",Count:1b}
data modify entity @s ArmorItems[1].id set from block ~ ~ ~ Items[{Slot:14b}].id
data modify entity @s ArmorItems[1].tag set from block ~ ~ ~ Items[{Slot:14b}].tag

data modify entity @s ArmorItems[0] set value {id:"minecraft:stone",Count:1b}
data modify entity @s ArmorItems[0].id set from block ~ ~ ~ Items[{Slot:12b}].id
data modify entity @s ArmorItems[0].tag set from block ~ ~ ~ Items[{Slot:12b}].tag
#视觉效果
execute as @s[tag=CAM_sac_ready] at @s positioned ~ ~1 ~ unless entity @e[type=item,tag=cam_sac_item,sort=nearest,limit=1,distance=..0.5] at @s run function cam:machine/sacrificing_table/item
execute unless entity @s[tag=CAM_sac_ready] if score @s CAM_sac_number = @e[type=item,tag=cam_sac_item,limit=1] CAM_sac_number run function cam:machine/sacrificing_table/kill
#按钮处理
execute if entity @a[scores={CAM_sac_no=1..},distance=..5] unless block ~ ~ ~ barrel{Items:[{Slot:26b,tag:{CAM_bg:1b}}]} run function cam:machine/sacrificing_table/close
execute if entity @a[scores={CAM_sac_ok=1..},distance=..5] unless block ~ ~ ~ barrel{Items:[{Slot:25b,tag:{CAM_bg:1b}}]} run function cam:machine/sacrificing_table/start
#输出标签处理
execute as @a[nbt={Inventory:[{tag:{CAM_input:1b}}]}] at @s run function cam:machine/sacrificing_table/inventory
#误放入处理
function cam:machine/sacrificing_table/check
#确定按钮
function cam:machine/sacrificing_table/replace/25_exam

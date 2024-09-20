data modify entity @s ArmorItems[2].id set value {id:"minecraft:stone",Count:1b,tag:{cam_no:1b}}
data modify entity @s ArmorItems[2].tag set from block ~ ~ ~ Items[{Slot:13b}].tag
#检测可用性
execute if predicate cam:item_displayer/air run scoreboard players set @s CAM_dis_status 1
execute unless predicate cam:item_displayer/air run scoreboard players set @s CAM_dis_status 0
execute if predicate cam:item_displayer/activate if entity @s[tag=!CAM_dis_ready] run tag @s add CAM_dis_ready
execute unless predicate cam:item_displayer/activate if entity @s[tag=CAM_dis_ready] run tag @s remove CAM_dis_ready

#物品展示
execute as @s[tag=CAM_dis_ready] at @s positioned ~ ~1 ~ unless entity @e[type=item,tag=cam_dis_item,sort=nearest,limit=1,distance=..0.5] at @s run function cam:machine/item_displayer/item
execute unless entity @s[tag=CAM_dis_ready] if score @s CAM_dis_number = @e[type=item,tag=cam_dis_item,limit=1] CAM_dis_number run function cam:machine/item_displayer/kill
#按钮处理
execute if entity @a[scores={CAM_dis_set=1..},distance=..5] unless block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{CAM_dis_bg:1b}}]} run function cam:machine/item_displayer/shift
execute if entity @a[scores={CAM_dis_glass=1..},distance=..5] unless block ~ ~ ~ barrel{Items:[{Slot:9b,tag:{CAM_dis_bg:1b}}]} run function cam:machine/item_displayer/glass
#误放入处理
function cam:machine/item_displayer/check

#按钮处理
function cam:machine/item_displayer/replace/17_exam
function cam:machine/item_displayer/replace/9_exam
#外观处理
execute if predicate cam:item_displayer/glass run data modify entity @s ArmorItems[3].tag.CustomModelData set value 9102103
execute unless predicate cam:item_displayer/glass run data modify entity @s ArmorItems[3].tag.CustomModelData set value 9102098
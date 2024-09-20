# advancements/badtrade
# 获取rotation信息
execute as @a store result score @s CAM_twoardsx1 run data get entity @s Rotation[0] 20
execute as @a store result score @s CAM_twoardsy1 run data get entity @s Rotation[1] 20
# 将rotation信息和上一刻比较
execute as @a run scoreboard players operation @s CAM_twoardsx2 -= @s CAM_twoardsx1
execute as @a run scoreboard players operation @s CAM_twoardsy2 -= @s CAM_twoardsy1
# 借此检测交易面板关闭
execute as @a unless score @s CAM_twoardsx2 matches 0 run tag @s remove stoptest
execute as @a unless score @s CAM_twoardsy2 matches 0 run tag @s remove stoptest
# 检测交易面板打开
execute as @a[scores={CAM_tradetrigger=1..}] run tag @s add stoptest
execute as @a[scores={CAM_tradetrigger=1..}] run scoreboard players set @s CAM_tradetrigger 0
# 检测进行交易动作的玩家进行检测
execute as @a[scores={CAM_tradecount=1..}] run function cam:advancements/test
# 对不在交易状态的玩家同步
execute as @a[tag=!stoptest] run function cam:advancements/check
# 初始化
execute as @a store result score @s CAM_twoardsx2 run scoreboard players get @s CAM_twoardsx1
execute as @a store result score @s CAM_twoardsy2 run scoreboard players get @s CAM_twoardsy1
execute as @a store result score @s CAM_sapphire run clear @s minecraft:emerald{CustomModelData:9102012,Enchantments:[{}],display:{Name:"[{\"translate\":\"item.cam.sapphire\"}]"}} 0

# advancements/extrade
execute as @e[scores={CAM_extrade=1000..}] run advancement grant @s only cam:countryside_and_magic/extremetrade

# advancements/greattrade
execute as @e[scores={CAM_greattrade=50..}] run advancement grant @s only cam:countryside_and_magic/greattrade

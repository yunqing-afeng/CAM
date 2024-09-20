execute if data entity @s Item{id:"minecraft:bow"} run scoreboard players set @s CAM_trade_item 1
execute if data entity @s Item{id:"minecraft:crossbow"} run scoreboard players set @s CAM_trade_item 1
execute if data entity @s Item{id:"minecraft:tipped_arrow"} run scoreboard players set @s CAM_trade_item 2
execute if data entity @s Item{id:"minecraft:tipped_arrow",tag:{id:"cam:erosion_arrow"}} run scoreboard players set @s CAM_trade_item 3
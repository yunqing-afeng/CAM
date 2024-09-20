execute if data entity @s Item{id:"minecraft:wooden_sword"} run scoreboard players set @s CAM_trade_item 1
execute if data entity @s Item{id:"minecraft:iron_sword"} run scoreboard players set @s CAM_trade_item 3
execute if data entity @s Item{id:"minecraft:diamond_sword"} run scoreboard players set @s CAM_trade_item 5
execute if data entity @s Item{id:"minecraft:stone_sword"} run scoreboard players set @s CAM_trade_item 7
execute if data entity @s Item{id:"minecraft:wooden_sword",tag:{Enchantments:[{}]}} run scoreboard players set @s CAM_trade_item 2
execute if data entity @s Item{id:"minecraft:iron_sword",tag:{Enchantments:[{}]}} run scoreboard players set @s CAM_trade_item 4
execute if data entity @s Item{id:"minecraft:diamond_sword",tag:{Enchantments:[{}]}} run scoreboard players set @s CAM_trade_item 6
execute if data entity @s Item{id:"minecraft:stone_sword",tag:{Enchantments:[{}]}} run scoreboard players set @s CAM_trade_item 8
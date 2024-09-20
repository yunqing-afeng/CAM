scoreboard players set @s CAM_tradecount 0
execute as @s unless entity @s[tag=goodtrade] run function cam:subtest
execute as @s if entity @s[tag=goodtrade] run tag @s remove goodtrade
execute as @s run scoreboard players operation @s CAM_sapphire2 = @s CAM_sapphire
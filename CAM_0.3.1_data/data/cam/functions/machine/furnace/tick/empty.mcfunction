execute store result score @s CAM_furancecount run data get block ~ ~ ~ Items[0].Count
execute store result block ~ ~ ~ Items[0].Count byte 1 run scoreboard players remove @s CAM_furancecount 1
data merge block ~ ~ ~ {CookTime:0s}
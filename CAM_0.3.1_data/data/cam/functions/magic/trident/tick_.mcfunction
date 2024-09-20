#储存近战数据
execute as @s[scores={CAM_storm2=1..,CAM_storm=1..}] at @s run function cam:magic/trident/store
execute as @s[tag=CAM_tri_reset] at @s run function cam:magic/trident/store
#数据恢复
execute as @s unless score @s CAM_storm matches -2147483648..2147483647 store result score @s CAM_storm run data get entity @s SelectedItem.tag.CAM_storm
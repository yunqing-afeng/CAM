scoreboard players set @s CAM_ext_count 10
scoreboard players set @s CAM_ext_cooldown 60
tag @s add do
item modify entity @s weapon.mainhand cam:illager_axe/swift_3
execute at @s run playsound minecraft:item.trident.thunder player @a ~ ~ ~ 1 2.0 0
function cam:magic/weapon/illager_axe/shoot/summon


tag @s remove do
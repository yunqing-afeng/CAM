#酒量初始化
execute as @a[tag=!wine_init] run function cam:village/wine/winedrink/capacity_initialize
#酒精度及其设置
execute as @a if entity @s[nbt={SelectedItem:{tag:{CAM_wine:1b}}}] store result score @s CAM_alcodeg_temp run data get entity @s SelectedItem.tag.CAM_alcohol
execute as @a unless entity @s[nbt={SelectedItem:{tag:{CAM_wine:1b}}}] if entity @s[nbt={Inventory:[{tag:{CAM_wine:1b},Slot:-106b}]}] store result score @s CAM_alcodeg_temp run data get entity @s Inventory[{Slot:-106b}].tag.CAM_alcohol
execute as @a unless entity @s[nbt={SelectedItem:{tag:{CAM_wine:1b}}}] unless entity @s[nbt={Inventory:[{tag:{CAM_wine:1b},Slot:-106b}]}] run scoreboard players reset @s CAM_alcodeg_temp
execute as @a if score @s CAM_alcohol_deg matches 1.. run scoreboard players remove @a CAM_alcohol_deg 1
#烈度及其设置
execute as @a if entity @s[nbt={SelectedItem:{tag:{CAM_wine:1b}}}] store result score @s CAM_intense_temp run data get entity @s SelectedItem.tag.CAM_intensity
execute as @a unless entity @s[nbt={SelectedItem:{tag:{CAM_wine:1b}}}] if entity @s[nbt={Inventory:[{tag:{CAM_wine:1b},Slot:-106b}]}] store result score @s CAM_intense_temp run data get entity @s Inventory[{Slot:-106b}].tag.CAM_intensity
execute as @a unless entity @s[nbt={SelectedItem:{tag:{CAM_wine:1b}}}] unless entity @s[nbt={Inventory:[{tag:{CAM_wine:1b},Slot:-106b}]}] run scoreboard players reset @s CAM_intense_temp

function cam:village/wine/winedrink/intensity_tick
#酒量增加
execute as @a run function cam:village/wine/winedrink/capacity
#醉酒
function cam:village/wine/winedrink/badrink
#酗酒
execute as @a run function cam:village/wine/winedrink/addict_tick
#千杯不倒
execute as @a[advancements={cam:countryside_and_magic/undrunk=false}] if score @s CAM_capacity matches 10000.. run advancement grant @s only cam:countryside_and_magic/undrunk
#醒酒
execute as @a if score @s CAM_advwithdrawl matches ..0 run function cam:village/wine/winedrink/reset
#力量效果
execute as @a run function cam:village/wine/winedrink/strength_tick








execute as @a if score @s CAM_alcohol_deg >= @s CAM_capacity run effect give @s minecraft:nausea 10 2
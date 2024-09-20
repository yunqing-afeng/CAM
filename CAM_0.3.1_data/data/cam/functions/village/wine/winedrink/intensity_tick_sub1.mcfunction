data modify storage cam:village wine_tick_temp1 set from storage cam:village wine_tick_temp[0]
data modify storage cam:village wine_tick_temp2 set from storage cam:village wine_tick_temp[0]
data remove storage cam:village wine_tick_temp2.value[]
execute store result score $temp CAM_alcohol_deg run data get storage cam:village wine_tick_temp1.uid
function cam:village/wine/winedrink/intensity_tick_sub2
data remove storage cam:village wine_tick_temp2.value[{time:0}]
data modify storage cam:village wine_tick append from storage cam:village wine_tick_temp2
data remove storage cam:village wine_tick_temp[0]
execute if data storage cam:village wine_tick_temp[0] run function cam:village/wine/winedrink/intensity_tick_sub1
data modify storage cam:village wine_tick set value []
execute unless data storage cam:village wine[{uid:0}] run data modify storage cam:village wine_tick_temp set from storage cam:village wine
execute if data storage cam:village wine_tick_temp[0] run function cam:village/wine/winedrink/intensity_tick_sub1
data modify storage cam:village wine set from storage cam:village wine_tick
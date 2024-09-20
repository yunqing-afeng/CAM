data modify storage cam:village wine_temp set from storage cam:village wine
function cam:village/wine/winedrink/intensity_sub
data modify storage cam:village wine set from storage cam:village wine_pre
data remove storage cam:village wine_pre
scoreboard players reset @s CAM_intense_do
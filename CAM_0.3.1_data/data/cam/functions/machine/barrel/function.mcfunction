#酿酒功能
function cam:machine/barrel/count
#误放入处理
execute if entity @a[distance=..20] run function cam:machine/barrel/check
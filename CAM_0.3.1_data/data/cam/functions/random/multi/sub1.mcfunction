function cam:random/multi/sub2
execute store result score #cur_count random run data get storage random multi_1
execute if score #cur_count random < #count random run function cam:random/multi/sub1
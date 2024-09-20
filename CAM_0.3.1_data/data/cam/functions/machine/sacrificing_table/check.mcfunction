execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:0b,tag:{CAM_bg:1b}}]} positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/0
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:1b,tag:{CAM_bg:1b}}]} positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/1
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:2b,tag:{CAM_bg:1b}}]} positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/2
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:3b,tag:{CAM_bg:1b}}]} positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/3
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:4b,tag:{CAM_bg:1b}}]} unless predicate cam:sacrifice/weapon positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/4
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:5b,tag:{CAM_bg:1b}}]} positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/5
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:6b,tag:{CAM_bg:1b}}]} positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/6
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:7b,tag:{CAM_bg:1b}}]} positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/7
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:8b,tag:{CAM_bg:1b}}]} positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/8
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:9b,tag:{CAM_bg:1b}}]} positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/9
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:10b,tag:{CAM_bg:1b}}]} positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/10
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:11b,tag:{CAM_bg:1b}}]} positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/11
execute as @s at @s unless predicate cam:sacrifice/sacrifice_slot unless data block ~ ~ ~ {Items:[{Slot:12b,tag:{id:"cam:sapphire"}}]} positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/12
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:13b,tag:{CAM_bg:1b}}]} positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/13
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:14b,tag:{CAM_bg:1b}}]} unless predicate cam:sacrifice/additional_slot positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/14
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:15b,tag:{CAM_bg:1b}}]} positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/15
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:16b,tag:{CAM_bg:1b}}]} positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/16
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:17b,tag:{CAM_bg:1b}}]} positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/17
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:18b,tag:{CAM_bg:1b}}]} positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/18
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:19b,tag:{CAM_bg:1b}}]} positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/19
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:20b,tag:{CAM_bg:1b}}]} positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/20
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:21b,tag:{CAM_bg:1b}}]} positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/21
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:22b,tag:{CAM_bg:1b}}]} positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/22
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:23b,tag:{CAM_bg:1b}}]} positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/23
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:24b,tag:{CAM_bg:1b}}]} positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/24
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:25b,tag:{CAM_bg:1b}}]} positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/25
execute as @s at @s unless data block ~ ~ ~ {Items:[{Slot:26b,tag:{CAM_bg:1b}}]} positioned ~ ~ ~ run function cam:machine/sacrificing_table/replace/26
execute if block ~ ~ ~ barrel{Items:[{Slot:4b}]} unless block ~ ~ ~ barrel{Items:[{Slot:4b,tag:{CAM_bg:1b}}]} run data modify block ~ ~ ~ Items[{Slot:4b}].tag.CAM_input set value 1b 
execute if block ~ ~ ~ barrel{Items:[{Slot:12b}]} unless block ~ ~ ~ barrel{Items:[{Slot:12b,tag:{CAM_bg:1b}}]} run data modify block ~ ~ ~ Items[{Slot:12b}].tag.CAM_input set value 1b 
execute if block ~ ~ ~ barrel{Items:[{Slot:14b}]} unless block ~ ~ ~ barrel{Items:[{Slot:14b,tag:{CAM_bg:1b}}]} run data modify block ~ ~ ~ Items[{Slot:14b}].tag.CAM_input set value 1b 
setblock ~ 319 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
execute if predicate cam:misc/celebration_harpoon/mainhand run data modify block ~ 319 ~ Items[0].id set from entity @s SelectedItem.id
execute if predicate cam:misc/celebration_harpoon/mainhand run data modify block ~ 319 ~ Items[0].tag set from entity @s SelectedItem.tag
execute if predicate cam:misc/celebration_harpoon/offhand run data modify block ~ 319 ~ Items[0].id set from entity @s Inventory[{Slot:-106b}].id
execute if predicate cam:misc/celebration_harpoon/offhand run data modify block ~ 319 ~ Items[0].tag set from entity @s Inventory[{Slot:-106b}].tag

execute store result score @s CAM_ch_temp run data get block ~ 319 ~ Items[0].tag.Damage
scoreboard players add @s CAM_ch_temp 3
execute store result block ~ 319 ~ Items[0].tag.Damage int 1 run scoreboard players get @s CAM_ch_temp

execute if predicate cam:misc/celebration_harpoon/mainhand run item replace entity @s weapon.mainhand from block ~ 319 ~ container.0
execute if predicate cam:misc/celebration_harpoon/offhand run item replace entity @s weapon.offhand from block ~ 319 ~ container.0

setblock ~ 319 ~ air
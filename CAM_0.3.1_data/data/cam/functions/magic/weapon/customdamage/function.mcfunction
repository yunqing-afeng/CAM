scoreboard players set @s CAM_unbreaking 0

setblock ~ 319 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
data modify block ~ 319 ~ Items[0].id set from entity @s SelectedItem.id
data modify block ~ 319 ~ Items[0].tag set from entity @s SelectedItem.tag
function cam:magic/weapon/customdamage/sub_function
setblock ~ 319 ~ air


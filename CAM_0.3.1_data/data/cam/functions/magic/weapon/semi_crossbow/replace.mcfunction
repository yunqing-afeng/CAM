setblock ~ 319 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:stone",Count:1b}]}
execute if predicate cam:misc/semibow/shoot_m run function cam:magic/weapon/semi_crossbow/charge__
execute if predicate cam:misc/semibow/shoot_o run function cam:magic/weapon/semi_crossbow/charge___

data modify block ~ 319 ~ Items[0].tag.ChargedProjectiles append value {id:"minecraft:arrow",Count:1b}
execute if data block ~ 319 ~ Items[0].tag.Enchantments[{id:"minecraft:multishot"}] run data modify block ~ 319 ~ Items[0].tag.ChargedProjectiles append value {id:"minecraft:arrow",Count:1b}
execute if data block ~ 319 ~ Items[0].tag.Enchantments[{id:"minecraft:multishot"}] run data modify block ~ 319 ~ Items[0].tag.ChargedProjectiles append value {id:"minecraft:arrow",Count:1b}


data modify block ~ 319 ~ Items[0].tag.ChargedProjectiles[0] set from block ~ 319 ~ Items[0].tag.CAM_semibow_candidates[0]
execute if data block ~ 319 ~ Items[0].tag.Enchantments[{id:"minecraft:multishot"}] run data modify block ~ 319 ~ Items[0].tag.ChargedProjectiles[1] set from block ~ 319 ~ Items[0].tag.CAM_semibow_candidates[0]
execute if data block ~ 319 ~ Items[0].tag.Enchantments[{id:"minecraft:multishot"}] run data modify block ~ 319 ~ Items[0].tag.ChargedProjectiles[2] set from block ~ 319 ~ Items[0].tag.CAM_semibow_candidates[0]
data remove block ~ 319 ~ Items[0].tag.CAM_semibow_candidates[0]
data modify block ~ 319 ~ Items[0].tag.Charged set value 1b


execute if predicate cam:misc/semibow/shoot_m run item replace entity @s weapon.mainhand from block ~ 319 ~ container.0
execute if predicate cam:misc/semibow/shoot_o run item replace entity @s weapon.offhand from block ~ 319 ~ container.0
setblock ~ 319 ~ air

playsound item.crossbow.loading_end player @a ~ ~ ~
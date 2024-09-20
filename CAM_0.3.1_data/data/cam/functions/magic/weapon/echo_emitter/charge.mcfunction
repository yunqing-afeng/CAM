execute if entity @s[gamemode=!creative] run clear @s echo_shard 1

setblock ~ 319 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:crossbow",Count:1b}]}


execute if predicate cam:misc/echo_emitter/mainhand_uncharge run data modify block ~ 319 ~ Items[0].tag set from entity @s SelectedItem.tag


execute if predicate cam:misc/echo_emitter/offhand_uncharge run data modify block ~ 319 ~ Items[0].tag set from entity @s Inventory[{Slot:-106b}].tag


execute if block ~ 319 ~ shulker_box{Items:[{Slot:0b,tag:{Unbreakable:1b}}]} run data modify block ~ 319 ~ Items[0].tag merge value {CAM_echo_emitter_unbreakable:1b}
data modify block ~ 319 ~ Items[0].tag merge value {CustomModelData:9102117,CAM_loaded:1b,Charged:1b,Unbreakable:1b,ChargedProjectiles:[{id:"minecraft:tipped_arrow",Count:1b,tag:{HideFlags:32,Potion:SONIC_BOOM,CustomPotionEffects:[{Id:26,Amplifier:0,Duration:71,ShowParticles:false},{Id:27,Amplifier:0,Duration:125,ShowParticles:false}],display:{Name:"[{\"translate\":\"item.cam.sonic_boom\",\"color\":\"dark_blue\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"}}}]}

scoreboard players set @s CAM_emit_timer 100

execute if predicate cam:misc/echo_emitter/mainhand_uncharge run item replace entity @s weapon.mainhand from block ~ 319 ~ container.0
execute if predicate cam:misc/echo_emitter/offhand_uncharge run item replace entity @s weapon.offhand from block ~ 319 ~ container.0
playsound minecraft:entity.warden.angry player @a ~ ~ ~ 0.5 1

setblock ~ 319 ~ air
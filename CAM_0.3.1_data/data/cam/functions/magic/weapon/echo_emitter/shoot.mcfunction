tag @s add CAM_echo_shoot
setblock ~ 319 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:carrot_on_a_stick",Count:1b}]}


execute if predicate cam:misc/echo_emitter/mainhand_charge run data modify block ~ 319 ~ Items[0].tag set from entity @s SelectedItem.tag


execute if predicate cam:misc/echo_emitter/offhand_charge run data modify block ~ 319 ~ Items[0].tag set from entity @s Inventory[{Slot:-106b}].tag

data modify block ~ 319 ~ Items[0].tag merge value {CustomModelData:9102116,CAM_loaded:0b}
execute unless block ~ 319 ~ shulker_box{Items:[{Slot:0b,tag:{CAM_echo_emitter_unbreakable:1b}}]} run data remove block ~ 319 ~ Items[0].tag.Unbreakable


execute if predicate cam:misc/echo_emitter/mainhand_charge run item replace entity @s weapon.mainhand from block ~ 319 ~ container.0
execute if predicate cam:misc/echo_emitter/offhand_charge run item replace entity @s weapon.offhand from block ~ 319 ~ container.0

execute anchored eyes positioned ^ ^ ^ as @e[type=arrow,distance=..1,limit=1,sort=nearest,nbt={CustomPotionEffects:[{Id:26,Duration:71,ShowParticles:false},{Id:27,Duration:125,ShowParticles:false}]}] at @s run function cam:magic/weapon/echo_emitter/function
playsound minecraft:entity.warden.sonic_charge player @a ~ ~ ~ 1 1
setblock ~ 319 ~ air

effect give @s slowness 1 5 true
tp @s ~ ~ ~
scoreboard players add @s CAM_emit_damage 1
execute if score @s CAM_emit_damage matches 3.. run scoreboard players add @s CAM_customdamage 1
execute if score @s CAM_emit_damage matches 3.. run scoreboard players set @s CAM_emit_damage 0


tag @s remove CAM_echo_shoot
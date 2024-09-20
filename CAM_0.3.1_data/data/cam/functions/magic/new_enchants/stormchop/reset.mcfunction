advancement revoke @s only cam:countryside_and_magic/stormchop
scoreboard players reset @s CAM_storm
scoreboard players reset @s CAM_storm2

execute if entity @s[nbt={SelectedItem:{id:"minecraft:trident",tag:{CAM_Enchantments:[{id:"cam:stormchop"}]}}}] run tag @s add CAM_tri_reset

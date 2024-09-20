execute as @s[predicate=cam:misc/bowenchant/wither,predicate=!cam:misc/bowenchant/multishot] run tag @e[type=arrow,limit=1,sort=nearest,distance=..2] add CAM_arrow_wither
execute as @s[predicate=cam:misc/bowenchant/wither,predicate=cam:misc/bowenchant/multishot] run tag @e[type=arrow,limit=3,sort=nearest,distance=..2] add CAM_arrow_wither
execute as @s[predicate=cam:misc/bowenchant/wither,nbt={SelectedItem:{tag:{CAM_Enchantments:[{id:"cam:wither"}]}}}] store result score #CAM_arrlvl CAM_arrlvl_wi run data get entity @s SelectedItem.tag.CAM_Enchantments[{id:"cam:wither"}].lvl
execute as @s[predicate=cam:misc/bowenchant/wither,nbt=!{SelectedItem:{tag:{CAM_Enchantments:[{id:"cam:wither"}]}}}] store result score #CAM_arrlvl CAM_arrlvl_wi run data get entity @s Inventory[{Slot:-106b}].tag.CAM_Enchantments[{id:"cam:wither"}].lvl
execute as @e[tag=CAM_arrow_wither,tag=!CAM_arrow_wither_active] run function cam:magic/bowenchant/wither

execute as @s[predicate=cam:misc/bowenchant/poison,predicate=!cam:misc/bowenchant/multishot] run tag @e[type=arrow,limit=1,sort=nearest,distance=..2] add CAM_arrow_poison
execute as @s[predicate=cam:misc/bowenchant/poison,predicate=cam:misc/bowenchant/multishot] run tag @e[type=arrow,limit=3,sort=nearest,distance=..2] add CAM_arrow_poison
execute as @s[predicate=cam:misc/bowenchant/poison,nbt={SelectedItem:{tag:{CAM_Enchantments:[{id:"cam:poison"}]}}}] store result score #CAM_arrlvl CAM_arrlvl_po run data get entity @s SelectedItem.tag.CAM_Enchantments[{id:"cam:poison"}].lvl
execute as @s[predicate=cam:misc/bowenchant/poison,nbt=!{SelectedItem:{tag:{CAM_Enchantments:[{id:"cam:poison"}]}}}] store result score #CAM_arrlvl CAM_arrlvl_po run data get entity @s Inventory[{Slot:-106b}].tag.CAM_Enchantments[{id:"cam:poison"}].lvl
execute as @e[tag=CAM_arrow_poison,tag=!CAM_arrow_poison_active] run function cam:magic/bowenchant/poison

execute as @s[predicate=cam:misc/bowenchant/freeze,predicate=!cam:misc/bowenchant/multishot] run tag @e[type=arrow,limit=1,sort=nearest,distance=..2] add CAM_arrow_freeze
execute as @s[predicate=cam:misc/bowenchant/freeze,predicate=cam:misc/bowenchant/multishot] run tag @e[type=arrow,limit=3,sort=nearest,distance=..2] add CAM_arrow_freeze
execute as @s[predicate=cam:misc/bowenchant/freeze,nbt={SelectedItem:{tag:{CAM_Enchantments:[{id:"cam:freeze"}]}}}] store result score #CAM_arrlvl CAM_arrlvl_fr run data get entity @s SelectedItem.tag.CAM_Enchantments[{id:"cam:freeze"}].lvl
execute as @s[predicate=cam:misc/bowenchant/freeze,nbt=!{SelectedItem:{tag:{CAM_Enchantments:[{id:"cam:freeze"}]}}}] store result score #CAM_arrlvl CAM_arrlvl_fr run data get entity @s Inventory[{Slot:-106b}].tag.CAM_Enchantments[{id:"cam:freeze"}].lvl
execute as @e[tag=CAM_arrow_freeze,tag=!CAM_arrow_freeze_active] run function cam:magic/bowenchant/freeze

execute as @s[predicate=cam:misc/bowenchant/decay,predicate=!cam:misc/bowenchant/multishot] run tag @e[type=arrow,limit=1,sort=nearest,distance=..2] add CAM_arrow_decay
execute as @s[predicate=cam:misc/bowenchant/decay,predicate=cam:misc/bowenchant/multishot] run tag @e[type=arrow,limit=3,sort=nearest,distance=..2] add CAM_arrow_decay
execute as @s[predicate=cam:misc/bowenchant/decay,nbt={SelectedItem:{tag:{CAM_Enchantments:[{id:"cam:decay"}]}}}] store result score #CAM_arrlvl CAM_arrlvl_fr run data get entity @s SelectedItem.tag.CAM_Enchantments[{id:"cam:decay"}].lvl
execute as @s[predicate=cam:misc/bowenchant/decay,nbt=!{SelectedItem:{tag:{CAM_Enchantments:[{id:"cam:decay"}]}}}] store result score #CAM_arrlvl CAM_arrlvl_fr run data get entity @s Inventory[{Slot:-106b}].tag.CAM_Enchantments[{id:"cam:decay"}].lvl
execute as @e[tag=CAM_arrow_decay,tag=!CAM_arrow_decay_active] run function cam:magic/bowenchant/decay

execute as @s[predicate=cam:misc/bowenchant/swift,predicate=!cam:misc/bowenchant/multishot] run tag @e[type=arrow,limit=1,sort=nearest,distance=..2] add CAM_arrow_swift
execute as @s[predicate=cam:misc/bowenchant/swift,predicate=cam:misc/bowenchant/multishot] run tag @e[type=arrow,limit=3,sort=nearest,distance=..2] add CAM_arrow_swift
execute as @s[predicate=cam:misc/bowenchant/swift,nbt={SelectedItem:{tag:{CAM_Enchantments:[{id:"cam:swift"}]}}}] store result score #CAM_arrlvl CAM_arrlvl_fr run data get entity @s SelectedItem.tag.CAM_Enchantments[{id:"cam:swift"}].lvl
execute as @s[predicate=cam:misc/bowenchant/swift,nbt=!{SelectedItem:{tag:{CAM_Enchantments:[{id:"cam:swift"}]}}}] store result score #CAM_arrlvl CAM_arrlvl_fr run data get entity @s Inventory[{Slot:-106b}].tag.CAM_Enchantments[{id:"cam:swift"}].lvl
execute as @e[tag=CAM_arrow_swift,tag=!CAM_arrow_swift_active] run function cam:magic/bowenchant/swift
scoreboard players operation #vampire CAM_chain_damage = @s CAM_chain_damage
scoreboard players operation #vampire CAM_chain_damage *= #vam CAM_chain_damage
execute as @a[tag=CAM_chainowner] run scoreboard players operation @s CAM_damage2 += #vampire CAM_chain_damage

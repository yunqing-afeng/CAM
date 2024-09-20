scoreboard objectives add CAM_chain_sub dummy
scoreboard objectives add CAM_chain_use minecraft.used:minecraft.fishing_rod
scoreboard objectives add CAM_chain_model dummy

scoreboard objectives add CAM_chain_sharp dummy
scoreboard objectives add CAM_chain_owner dummy
scoreboard objectives add CAM_chain_smite dummy
scoreboard objectives add CAM_chain_bane dummy
scoreboard objectives add CAM_chain_poison dummy
scoreboard objectives add CAM_chain_wither dummy
scoreboard objectives add CAM_chain_snake dummy
scoreboard objectives add CAM_chain_blood dummy
scoreboard objectives add CAM_chain_freeze dummy
scoreboard objectives add CAM_chain_rage dummy
scoreboard objectives add CAM_chain_damage dummy
scoreboard objectives add CAM_chain_decay dummy

scoreboard players set #temp CAM_chain_damage 2
scoreboard players set #vam CAM_chain_damage 10
data modify storage cam:chainblade Item set value {id:"cam:none",Count:1b,Slot:0b}
scoreboard objectives add CAM_module dummy
scoreboard objectives add CAM_mdetect dummy
scoreboard objectives add CAM_modmenu dummy
scoreboard objectives add CAM_modtemp dummy

scoreboard players set #formerdetector CAM_modtemp 0
scoreboard players add #default CAM_module 1
execute if score #default CAM_module matches 1 run function cam:modules/default
function cam:modules/collabration/load


advancement revoke @a only cam:countryside_and_magic/init
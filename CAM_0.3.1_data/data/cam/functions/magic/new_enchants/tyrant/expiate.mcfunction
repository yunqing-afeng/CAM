function cam:magic/new_enchants/tyrant/count
execute if score @s CAM_tyr_exp_dis matches 1.. run title @s actionbar {"translate":"enchantment.cam.general","with":[{"translate":"title.cam.expiate","color": "aqua"},{"score":{"name": "*","objective": "CAM_tyr_exp_dis"},"color": "gold"}]}
execute if score @s CAM_tyr_exp_dis matches ..0 run particle happy_villager ~ ~1 ~ 1 1 1 0 200 force
execute if score @s CAM_tyr_exp_dis matches ..0 run tag @s remove CAM_tyrant
execute if score @s CAM_tyr_exp_dis matches ..0 run playsound minecraft:ui.toast.challenge_complete ambient @s ~ ~ ~
execute if score @s CAM_tyr_exp_dis matches ..0 run advancement grant @s only cam:countryside_and_magic/expiate
execute if score @s CAM_tyr_exp_dis matches ..0 run title @s actionbar {"translate":"title.cam.expiate_done","color": "gold"}
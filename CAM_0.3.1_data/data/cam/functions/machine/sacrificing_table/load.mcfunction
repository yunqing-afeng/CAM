scoreboard objectives add CAM_sacerror dummy
scoreboard objectives add CAM_sacerror2 dummy
scoreboard objectives add CAM_sac_ok dummy
scoreboard objectives add CAM_sac_no dummy
scoreboard objectives add CAM_sac_lore_re dummy
scoreboard objectives add CAM_sac_lore_add dummy
scoreboard objectives add CAM_sac_lore_lvl dummy
scoreboard objectives add CAM_sac_process dummy
scoreboard objectives add CAM_sac_break dummy
scoreboard objectives add CAM_sac_failure dummy
scoreboard objectives add CAM_sac_cooldown dummy


scoreboard objectives add CAM_sac_number dummy
execute unless score # CAM_sac_number matches -2147483648..2147483647 run scoreboard players set # CAM_sac_number -2147483648
#酒的参数
scoreboard objectives add CAM_alcohol_deg dummy
scoreboard objectives add CAM_alcodeg_temp dummy
scoreboard objectives add CAM_capacity dummy
scoreboard objectives add CAM_cap_undrunk dummy
scoreboard objectives add CAM_cap_litdrunk dummy
scoreboard objectives add CAM_cap_drunk dummy
scoreboard objectives add CAM_intensity dummy
scoreboard objectives add CAM_intense_temp dummy
scoreboard objectives add CAM_wine_compare dummy
scoreboard objectives add CAM_intense_do dummy
scoreboard objectives add CAM_badrink dummy
scoreboard objectives add CAM_badrink_tick dummy
scoreboard objectives add CAM_addict dummy
scoreboard objectives add CAM_addict_tick dummy
scoreboard objectives add CAM_addict_temp dummy
scoreboard objectives add CAM_withdrawal dummy
scoreboard objectives add CAM_advwithdrawl health
scoreboard objectives add CAM_dstrength dummy
scoreboard objectives add CAM_dstrength_gt dummy
data modify storage cam:village wine set value [{uid:0,value:[{}]}]
scoreboard players set @a CAM_dstrength -1



#饮酒常量
scoreboard players set $wine_constant1 CAM_capacity 5
scoreboard players set $wine_constant2 CAM_capacity 3
scoreboard players set $wine_constant3 CAM_capacity 2
scoreboard players set $wine_constant4 CAM_capacity 20
scoreboard players set $wine_constant5 CAM_capacity 4


#下述假名在CAM_module的分数为相应模块的开关，1为开启，0为关闭。

#welcome 问候语
#功能性 func
 #crafting 合成
 #barrel 酿酒台
 #wine 酒
 #furnace 熔炉
 #sac 祭祀台
 #display 物品展示台
 #sac_enchant 祭祀附魔
 #dec_enchant 装饰性附魔
#装饰性 dec
 #lantern 宫灯/孔明灯
 #chinese_knot 挂饰
#村庄 village
 #guard 河神
 #trade 交易
 #villagers 新村民
 #farming 自动耕种
 #rice 水稻
 #book 书
 #scraezombie 稻草人
 #egg 鸡蛋自动孵化
#武器 weapons
 #killing_sword 斩妖桃木剑
 #weapon 新增武器
 #harpoons 鱼叉/长矛
 #cov_wea 其他武器（conventional weapons）
#杂项 misc
 #heart 心
 #estinguish 弓箭破坏光源
 #monster 怪物
 #sapphire 蓝宝石
 #bone_arrow 骨箭
 #foods 食物(除在其他模块中已包括的)
 #fishing 钓鱼
 #sculk 幽匿
 #others 其他物品
#技术性 tech（默认开启）
 #customdamage 自定义耐久损耗
 #antigrind 抗砂轮
#
#toys（特殊）一些趣味功能，开发者小玩具
#杂项（骨箭）
execute if score #bone_arrow CAM_module matches 1 run function cam:cm/bone_arrow/tick
#功能性
execute if score #crafting CAM_module matches 1 run function cnc:machine/crafting_table/tick
execute if score #crafting CAM_module matches 1 run function cnc:machine/crafting_table/get
execute if score #barrel CAM_module matches 1 run function cam:machine/barrel/tick
execute if score #wine CAM_module matches 1 run function cam:village/wine/tick
execute if score #furnace CAM_module matches 1 run function cam:machine/furnace/tick/main
execute if score #sac CAM_module matches 1 run function cam:machine/sacrificing_table/tick
execute if score #display CAM_module matches 1 run function cam:machine/item_displayer/tick
execute if score #sac_enchant CAM_module matches 1 run function cam:modules/modules/enchants
execute if score #dec_enchant CAM_module matches 1 run function cam:modules/modules/dec_enchants
#装饰性
execute if score #chinese_knot CAM_module matches 1 run function cam:modules/modules/strap
execute if score #lantern CAM_module matches 1 run function cam:cm/palace_lantern/tick
#村庄
execute if score #rice CAM_module matches 1 run function cam:cm/rice/tick
execute if score #guard CAM_module matches 1 run function cam:modules/modules/guard
execute if score #trade CAM_module matches 1 run function cam:modules/modules/trade
execute if score #villagers CAM_module matches 1 run function cam:modules/modules/villagers
execute if score #farming CAM_module matches 1 run function cam:villager/farmer/farming/tick
execute if score #scarezombie CAM_module matches 1 run function cam:village/scarezombie/tick
execute if score #egg CAM_module matches 1 run function cam:village/egg/tick
#武器
execute if score #weapon CAM_module matches 1 run function cam:modules/modules/weapon
execute if score #harpoons CAM_module matches 1 run function cam:cm/tick
execute if score #killing_sword CAM_module matches 1 run function cam:magic/killer/tick
execute if score #celebration_harpoon CAM_module matches 1 run function cam:cm/celebration_harpoon/tick
#杂项（骨箭由于冲突被移到上面）
execute if score #heart CAM_module matches 1 run function cam:magic/heart/tick
execute if score #monster CAM_module matches 1 run function cam:monster/tick
execute if score #estinguish CAM_module matches 1 run function cam:cm/arrow/tick
execute if score #sculk CAM_module matches 1 run function cam:cm/sculk/tick
execute if score #others CAM_module matches 1 run function cam:cm/compass/tick



#技术性
execute if score #antigrind CAM_module matches 1 run function cam:magic/antigrind/tick
execute if score #customdamage CAM_module matches 1 run function cam:magic/weapon/customdamage/tick


#全局变量
function cam:lay/tick
#未完成
#function cam:advancements/tick
#function cam_music:tick

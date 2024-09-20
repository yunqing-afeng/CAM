damage @s 1 cam:chain_blade by @a[tag=CAM_chainowner,limit=1,sort=nearest]
scoreboard players remove @s CAM_chain_damage 1
execute if score @s CAM_chain_damage matches 1.. run function cam:magic/weapon/chain_blade/test2
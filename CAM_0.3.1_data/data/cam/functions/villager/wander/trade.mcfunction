tag @s add CAM_wander_tri
scoreboard players set @s CAM_wan_tcount 5
data remove entity @s Offers.Recipes[]
data modify storage cam:villager wander_recent set value []
data modify storage cam:villager wander_test set value []
function cam:villager/wander/trade_
function cam:villager/wander/trade__
tellraw @a [{"text":"===","color":"blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"translate":"cam.text.modmenu_const.til","color":"white","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"text":"===","color":"blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]

execute if score #lock CAM_module matches 0 run tellraw @a [{"translate": "text.cam.egg.max"},{"score":{"name":"$max","objective":"CAM_chicken"},"clickEvent":{"action":"suggest_command","value": "/scoreboard players set $max CAM_chicken"},"color":"green"}]
execute if score #lock CAM_module matches 1 run tellraw @a [{"translate": "text.cam.egg.max"},{"score":{"name":"$max","objective":"CAM_chicken"},"color":"green"}]

execute if score #lock CAM_module matches 0 run function cam:modules/menu/const/tyrant
execute if score #lock CAM_module matches 1 run function cam:modules/menu/const/tyrant_off

tellraw @a [{"translate":"cam.text.back","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent": {"action":"run_command","value": "/function cam:modules/menu/main"}}]
tellraw @a [{"text":"==================","color":"blue","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
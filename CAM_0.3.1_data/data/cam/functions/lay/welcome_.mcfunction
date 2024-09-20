#需要修改：tick，load，update（主要用于模块菜单），lay/welcome
scoreboard objectives add CAM_version dummy
execute store result score #cam CAM_version run data get entity @p DataVersion
execute if score #cam CAM_version matches 3105.. run tellraw @a [{"translate":"CAM datapack has been successfully loaded,","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false},{"translate":"but its resourcepack isn't loaded.Click ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"hoverEvent":{"action":"show_text","value":{"translate":"Please load resourcepack first"}}},{"translate":"HERE ","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"open_url","value":"https://www.mcbbs.net/thread-1221380-1-1.html"}},{"translate":"to ","color":"aqua","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"clickEvent":{"action":"run_command","value":"/function cam:modules/menu/main"}},{"translate":"download","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
tellraw @a {"text":"v0.3.1 fix1","color":"gray"}
execute if score #toys CAM_module matches 1 as @a run function cam:lay/jrrp


execute if score #fisma CAM_module matches 1 run function cam:modules/collabration/load/fisma_welcome
execute if score #cam CAM_version matches ..3104 run tellraw @a [{"translate":"Your version is too old for CAM to load. Suitable version should be 1.19 and above.","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false}]
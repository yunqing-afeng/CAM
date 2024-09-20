execute if score #time CAM_note_timer matches 64.. run scoreboard players set #time CAM_note_timer 0
execute unless score #time CAM_note_timer matches 64.. run scoreboard players add #time CAM_note_timer 1

execute as @a[predicate=cam:enchant/note] at @s run function cam:magic/new_dec_enchants/notes/function
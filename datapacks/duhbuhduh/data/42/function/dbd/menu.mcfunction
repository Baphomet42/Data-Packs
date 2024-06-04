tellraw @s[scores={42menu=1}] [{"text":"","color":"gray"},{"text":"DuhBuhDuh","color":"gold","bold":true},\
    {"text":"\n   "},{"text":"Set character...","color":"dark_gray"},\
    {"text":"\n      "},{"text":"[Reset]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4205001"}},\
    {"text":"\n      "},{"text":"[Survivor]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4205002"}},\
    {"text":"\n      "},{"text":"[Killer]","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4205003"}}\
    ]
execute if entity @s[tag=!42op,gamemode=!creative,scores={42menu=4205001..4205999}] run function 42:error_perms
scoreboard players set @s[tag=!42op,gamemode=!creative,scores={42menu=4205001..4205999}] 42menu 0

execute if score @s 42menu matches 4205001 run function 42:dbd/char/unset
execute if score @s 42menu matches 4205002 run function 42:dbd/char/set_player
execute if score @s 42menu matches 4205003 run function 42:dbd/char/set_killer
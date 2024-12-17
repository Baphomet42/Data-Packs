tellraw @s[scores={42menu=1}] [\
    {"text":""},{"text":"42source","color":"gold","bold":true}," ",{"text":"\u2318","color":"white","clickEvent":{"action":"run_command","value":"/function 42:gen/config/src/menu"},"hoverEvent":{"action":"show_text","contents":"Open config settings\n(requires server operator status)"}},\
    {"text":"\n   "},{"text":"Get item...","color":"dark_gray"},\
    {"text":"\n      "},{"text":"[Pistol]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4208001"}},\
    {"text":"\n      "},{"text":"[Assault Rifle]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4208002"}},\
    {"text":"\n      "},{"text":"[Ray Gun]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4208003"}}]
# 4208001..4208003
execute if entity @s[tag=!42op,gamemode=!creative,scores={42menu=4208001..4208003}] run function 42:error_perms
scoreboard players set @s[tag=!42op,gamemode=!creative,scores={42menu=4208001..4208003}] 42menu 0
execute if entity @s[scores={42menu=4208001}] run function 42:src/gun/pistol/craft
execute if entity @s[scores={42menu=4208002}] run function 42:src/gun/ar/craft
execute if entity @s[scores={42menu=4208003}] run function 42:src/gun/raygun/craft
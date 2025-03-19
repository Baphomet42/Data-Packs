tellraw @s[scores={42menu=1}] [\
    {text:""},{text:"42source",color:"gold",bold:true}," ",{text:"\u2318",color:"white",click_event:{action:"run_command",command:"/function 42:gen/config/src/menu"},hover_event:{action:"show_text",value:"Open config settings\n(requires server operator status)"}},\
    {text:"\n   "},{text:"Get item...",color:"dark_gray"},\
    {text:"\n      "},{text:"[Pistol]",color:"gray",click_event:{action:"run_command",command:"/trigger 42menu set 4207001"}},\
    {text:"\n      "},{text:"[Assault Rifle]",color:"gray",click_event:{action:"run_command",command:"/trigger 42menu set 4207002"}},\
    {text:"\n      "},{text:"[Ray Gun]",color:"gray",click_event:{action:"run_command",command:"/trigger 42menu set 4207003"}},\
    {text:"\n      "},{text:"[RPG]",color:"gray",click_event:{action:"run_command",command:"/trigger 42menu set 4207004"}},\
    {text:"\n      "},{text:"[Custom Gun]",color:"gray",click_event:{action:"suggest_command",command:"/function 42:src/gun/craft/custom {args:{}}"}}\
]
# 4207001..4207003
execute if entity @s[tag=!42op,gamemode=!creative,scores={42menu=4207001..4207003}] run function 42:error_perms
scoreboard players set @s[tag=!42op,gamemode=!creative,scores={42menu=4207001..4207003}] 42menu 0
execute if entity @s[scores={42menu=4207001}] run function 42:src/gun/craft/presets/pistol
execute if entity @s[scores={42menu=4207002}] run function 42:src/gun/craft/presets/ar
execute if entity @s[scores={42menu=4207003}] run function 42:src/gun/craft/presets/raygun
execute if entity @s[scores={42menu=4207004}] run function 42:src/gun/craft/presets/rpg
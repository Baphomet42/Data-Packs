tellraw @s[scores={42menu=1}] [{text:""},{text:"Posers",color:"gold",bold:true},{text:"\n   "},{text:"Get item...",color:"dark_gray"},{text:"\n      "},{text:"[Mannequin - Random Texture]",color:"gray",click_event:{action:"run_command",command:"/trigger 42menu set 4209001"}}]
#4209001-4209002
execute if entity @s[tag=!42op,gamemode=!creative,scores={42menu=4201001..4201002}] run function 42:error_perms
scoreboard players set @s[tag=!42op,gamemode=!creative,scores={42menu=4201001..4201002}] 42menu 0
execute if entity @s[scores={42menu=4209001}] run function 42:posers/mannequin/spawn_egg/random_texture
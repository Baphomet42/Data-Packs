tellraw @s[scores={42menu=1}] [{"text":""},{"text":"Brave New World","color":"gold","bold":true},{"text":"\n   "},{"text":"Teleport...","color":"dark_gray"},{"text":"\n      "},{"text":"[Exegol]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4202001"}},{"text":"\n      "},{"text":"[Overworld]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4202002"}}]
execute if entity @s[tag=!42op,gamemode=!creative,scores={42menu=4202001..4202002}] run function 42:error_perms
scoreboard players set @s[tag=!42op,gamemode=!creative,scores={42menu=4202001..4202002}] 42menu 0
execute if entity @s[scores={42menu=4202001}] run function 42:newworld/teleport_exegol
execute if entity @s[scores={42menu=4202002}] run function 42:newworld/teleport_overworld
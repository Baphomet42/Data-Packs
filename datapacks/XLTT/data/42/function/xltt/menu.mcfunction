tellraw @s[scores={42menu=1}] [{"text":""},{"text":"XL-TT","color":"gold","bold":true},{"text":"\n   "},{"text":"Get item...","color":"dark_gray"},{"text":"\n      "},{"text":"[O.D.M. Sword]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4201001"}},{"text":"\n      "},{"text":"[Titan Spawn Egg]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4201002"}},{"text":"\n      "},{"text":"[Cursed Wine]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4201003"}},{"text":"\n   "},{"text":"Use Power...","color":"dark_gray"},{"text":"\n      "},{"text":"[Beast Scream]","color":"gray","clickEvent":{"action":"run_command","value":"/trigger 42menu set 4201020"}}]
#4201001-4201003
execute if entity @s[tag=!42op,gamemode=!creative,scores={42menu=4201001..4201003}] run function 42:error_perms
scoreboard players set @s[tag=!42op,gamemode=!creative,scores={42menu=4201001..4201003}] 42menu 0
execute if entity @s[scores={42menu=4201001}] run function 42:xltt/odm/craft
execute if entity @s[scores={42menu=4201002}] run function 42:xltt/titan/craft
execute if entity @s[scores={42menu=4201003}] run function 42:xltt/wine/craft
#4201020
execute if entity @s[scores={42menu=4201020}] if entity @s[gamemode=spectator] run tellraw @s {"text":"Spectators cannot use abilities","color":"red"}
execute if entity @s[scores={42menu=4201020}] unless entity @s[gamemode=spectator] run function 42:xltt/titan/scream
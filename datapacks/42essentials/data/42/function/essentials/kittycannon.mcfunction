scoreboard players reset @s kittycannon

function 42:essentials/kitty_macro with entity @s
scoreboard players set @e[type=cat,tag=kittycannon,tag=needData,limit=1] 42.datapack 4
execute as @e[type=cat,tag=kittycannon,tag=needData,limit=1] run function 42:essentials/get_motion
execute at @s run tag @e[type=cat,tag=kittycannon,tag=needData,limit=1] remove needData
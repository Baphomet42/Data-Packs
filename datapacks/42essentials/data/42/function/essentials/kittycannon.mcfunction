scoreboard players reset @s kittycannon

function 42:essentials/kitty_macro with entity @s
execute as @e[limit=1,type=cat,tag=42.tag.essentials.kittycannon,tag=42.tag.essentials.need_data] run function 42:essentials/get_motion
tag @e[limit=1,type=cat,tag=42.tag.essentials.kittycannon,tag=42.tag.essentials.need_data] remove 42.tag.essentials.need_data
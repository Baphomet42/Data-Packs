data remove entity @e[type=interaction,tag=42.tag.posers.temp_interaction,limit=1] attack
execute as @e[type=interaction,tag=42.tag.posers.temp_interaction] on vehicle on vehicle if function 42:posers/mannequin/is_editing run return fail
tag @s add 42.tag.posers.temp_player
execute as @e[type=interaction,tag=42.tag.posers.temp_interaction] on vehicle on vehicle run function 42:posers/mannequin/kill
tag @s remove 42.tag.posers.temp_player
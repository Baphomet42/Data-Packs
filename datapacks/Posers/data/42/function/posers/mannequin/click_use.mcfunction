data remove entity @e[type=interaction,tag=42.tag.posers.temp_interaction,limit=1] interaction
execute as @e[type=interaction,tag=42.tag.posers.temp_interaction] on vehicle on vehicle if function 42:posers/mannequin/is_editing run return fail
tag @s add 42.tag.posers.temp_player
function 42:posers/mannequin/click_use_switch
tag @s remove 42.tag.posers.temp_player
data remove entity @e[type=interaction,tag=42.tag.posers.temp_interaction,limit=1] interaction
execute as @e[type=interaction,tag=42.tag.posers.temp_interaction] on vehicle on vehicle if function 42:posers/mannequin/is_editing run return fail
tag @s add 42.tag.posers.temp_player
execute if items entity @s weapon.mainhand player_head[profile] as @e[type=interaction,tag=42.tag.posers.temp_interaction] on vehicle on vehicle run data modify entity @s profile set from entity @a[tag=42.tag.posers.temp_player,limit=1] SelectedItem.components.minecraft:profile
execute if items entity @s weapon.mainhand player_head[!profile] as @e[type=interaction,tag=42.tag.posers.temp_interaction] on vehicle on vehicle run function 42:posers/mannequin/random_texture
execute unless items entity @s weapon.mainhand player_head as @e[type=interaction,tag=42.tag.posers.temp_interaction] on vehicle on vehicle run function 42:posers/mannequin/edit_equipment
tag @s remove 42.tag.posers.temp_player
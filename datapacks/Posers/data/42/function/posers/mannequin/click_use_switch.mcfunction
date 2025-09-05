execute if items entity @s weapon.mainhand player_head[profile] as @e[type=interaction,tag=42.tag.posers.temp_interaction] on vehicle on vehicle run return run data modify entity @s profile set from entity @a[tag=42.tag.posers.temp_player,limit=1] SelectedItem.components.minecraft:profile
execute if items entity @s weapon.mainhand player_head as @e[type=interaction,tag=42.tag.posers.temp_interaction] on vehicle on vehicle run return run function 42:posers/mannequin/random_texture

execute if items entity @s weapon.mainhand name_tag[custom_name] as @e[type=interaction,tag=42.tag.posers.temp_interaction] on vehicle on vehicle run return run data modify entity @s CustomName set from entity @a[tag=42.tag.posers.temp_player,limit=1] SelectedItem.components.minecraft:custom_name
execute if items entity @s weapon.mainhand name_tag as @e[type=interaction,tag=42.tag.posers.temp_interaction] on vehicle on vehicle run return run data remove entity @s CustomName

execute as @e[type=interaction,tag=42.tag.posers.temp_interaction] on vehicle on vehicle run return run function 42:posers/mannequin/edit_equipment
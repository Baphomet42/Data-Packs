function 42:posers/mannequin/spawn_macro with entity @s
data remove storage 42:poser temp
data modify storage 42:poser temp.data set from entity @s data

execute if entity @s[tag=42.tag.posers.spawn_mannequin.random_texture] as @e[type=mannequin,limit=1,tag=42.tag.posers.new_spawn] run function 42:posers/mannequin/random_texture

data modify entity @e[type=mannequin,limit=1,tag=42.tag.posers.new_spawn] {} merge from storage 42:poser temp.data.mannequin_data
execute if data storage 42:poser temp.data.mannequin_data.profile unless data storage 42:poser temp.data.mannequin_data.profile.texture run function 42:posers/mannequin/temp_profile_fix
execute as @e[type=mannequin,limit=1,tag=42.tag.posers.new_spawn] run function 42:posers/mannequin/init

data remove storage 42:poser temp
tag @e remove 42.tag.posers.new_spawn
kill @s
data remove storage 42:posers temp
data modify storage 42:posers temp.spawner set from entity @s
data modify storage 42:posers temp.macro.Rotation set from storage 42:posers temp.spawner.Rotation
data modify storage 42:posers temp.macro.profile set from storage 42:posers temp.spawner.data.mannequin_data.profile
data modify storage 42:posers temp.data set from storage 42:posers temp.spawner.data

execute unless data storage 42:posers temp.macro.profile run function 42:posers/mannequin/spawn_macro with storage 42:posers temp.macro
execute if data storage 42:posers temp.macro.profile run function 42:posers/mannequin/spawn_macro_profile with storage 42:posers temp.macro

execute if entity @s[tag=42.tag.posers.spawn_mannequin.random_texture] unless data storage 42:posers temp.macro.profile as @e[type=mannequin,limit=1,tag=42.tag.posers.new_spawn] run function 42:posers/mannequin/random_texture

data modify entity @e[type=mannequin,limit=1,tag=42.tag.posers.new_spawn] {} merge from storage 42:posers temp.data.mannequin_data
execute as @e[type=mannequin,limit=1,tag=42.tag.posers.new_spawn] run function 42:posers/mannequin/init

data remove storage 42:posers temp
tag @e remove 42.tag.posers.new_spawn
kill @s
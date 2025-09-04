scoreboard players enable @a poser
execute as @a[scores={poser=1..}] run function 42:posers/trigger/main
execute as @a[scores={poser=..-1}] run function 42:posers/trigger/main

execute as @e[type=armor_stand,tag=42.tag.posers.spawn_mannequin] at @s run function 42:posers/mannequin/spawn
execute as @e[type=mannequin,scores={42.obj.posers.temp_profile_fix=1..}] at @s run function 42:posers/mannequin/temp_profile_fix_tick
execute as @e[type=interaction,tag=42.tag.posers.mannequin.interaction,tag=!42.tag.posers.mannequin.locked_interaction] at @s run function 42:posers/mannequin/tick_interaction
execute as @e[type=armor_stand,tag=42.tag.posers.mannequin.equipment_editor] at @s run function 42:posers/mannequin/tick_equipment_editor
kill @e[type=interaction,tag=42.tag.posers.mannequin.rider,predicate=!42:has_vehicle]

schedule function 42:posers/tick 1t replace
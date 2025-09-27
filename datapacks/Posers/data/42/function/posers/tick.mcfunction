execute as @a[scores={poser=1..}] at @s run function 42:posers/trigger/poser
scoreboard players reset @a poser
scoreboard players enable @a poser

execute as @e[type=armor_stand,tag=42.tag.posers.spawn_mannequin] at @s run function 42:posers/mannequin/spawn
execute as @e[type=interaction,tag=42.tag.posers.mannequin.interaction_spacer,predicate=42:periodic_10] at @s run function 42:posers/mannequin/tick_interaction_spacer
execute as @e[type=mannequin,tag=42.tag.posers.mannequin,predicate=42:periodic_10] at @s run function 42:posers/mannequin/tick_mannequin
execute as @e[type=mannequin,tag=42.tag.posers.mannequin.ai.watch_player] at @s run function 42:posers/mannequin/ai/watch_player
execute as @e[type=area_effect_cloud,tag=42.tag.posers.mannequin.equipment_editor_cloud] at @s run function 42:posers/mannequin/editor/original/tick_cloud
kill @e[type=armor_stand,tag=42.tag.posers.mannequin.vehicle,predicate=!42:has_passenger]
kill @e[type=area_effect_cloud,tag=42.tag.posers.mannequin.rider,predicate=!42:has_vehicle]
kill @e[type=interaction,tag=42.tag.posers.mannequin.rider,predicate=!42:has_vehicle]
kill @e[type=interaction,tag=42.tag.posers.mannequin.vehicle,predicate=!42:has_passenger]

schedule function 42:posers/tick 1t replace
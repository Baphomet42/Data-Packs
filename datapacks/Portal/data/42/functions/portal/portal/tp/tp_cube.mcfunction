execute if entity @s[tag=42.portal_cube_hit] run function 42:portal/tag_id
execute if entity @s[tag=42.portal_cube_hit] as @e[tag=42.portal_id,tag=42.portal_cube_tp,limit=1,tag=!42.portal_motion_tp] run function 42:portal/portal/tp/tp_cube
execute if entity @s[tag=42.portal_cube_hit] run tag @e remove 42.portal_id
execute if entity @s[tag=42.portal_cube_tp] if entity @e[tag=42.portal_tp1,scores={42.portal_y=0..}] at @e[tag=42.portal_tp2] positioned ^ ^-.8125 ^1.8 run tp @s ~ ~ ~
execute if entity @s[tag=42.portal_cube_tp] if entity @e[tag=42.portal_tp1,scores={42.portal_y=0..}] run data remove entity @s Motion
execute if entity @s[tag=42.portal_cube_tp] if entity @e[tag=42.portal_tp1,scores={42.portal_y=..-1}] run function 42:portal/portal/tp/tp_cube_air
execute if entity @s[tag=42.portal_cube_tp,tag=42.portal_turret] at @s run function 42:portal/portal/tp/tp_turret 
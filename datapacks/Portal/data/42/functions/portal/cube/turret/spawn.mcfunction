execute as @e[tag=42.portal_cube_spawn,tag=42.portal_cube_tp] run scoreboard players set @s 42.portal_v 0
execute as @e[tag=42.portal_cube_spawn,tag=42.portal_cube_tp] run scoreboard players set @s 42.portal_skin 0
execute if entity @s[tag=42.portal_spawn_rot] as @e[tag=42.portal_cube_spawn,tag=42.portal_cube_tp] at @s as @p at @s run function 42:portal/get_rot
execute if entity @s[tag=42.portal_spawn_rot] as @e[tag=42.portal_cube_spawn,tag=42.portal_cube_tp] at @s run function 42:portal/cube/turret/smart_rotate
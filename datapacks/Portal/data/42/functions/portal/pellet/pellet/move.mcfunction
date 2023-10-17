execute if entity @s[tag=!42.portal_pellet_on] at @s if block ~ ~ ~ #42:portal_cube_pass if block ^ ^ ^.4 #42:portal_cube_pass run tp ^ ^ ^.05
execute if entity @s[tag=!42.portal_pellet_on] at @s if block ~ ~ ~ #42:portal_cube_pass unless block ^ ^ ^.4 #42:portal_cube_pass run particle end_rod ^ ^ ^.3 .15 .15 .15 0 5 force
execute if entity @s[tag=!42.portal_pellet_on] at @s if block ~ ~ ~ #42:portal_cube_pass unless block ^ ^ ^.4 #42:portal_cube_pass run function 42:portal/pellet/pellet/bounce
execute if entity @s[tag=!42.portal_pellet_on] positioned ~ ~-.5 ~ if entity @a[distance=...75,gamemode=!spectator] run function 42:portal/pellet/pellet/kill
execute if entity @s[tag=!42.portal_pellet_on] positioned ~ ~-1.5 ~ if entity @a[distance=...75,gamemode=!spectator] run function 42:portal/pellet/pellet/kill
execute if entity @s[tag=!42.portal_pellet_on] positioned ~ ~-.5 ~ run tag @e[distance=...75,tag=42.portal_cube_tp,tag=42.portal_turret] add 42.portal_pellet_kill_cube
execute if entity @s[tag=!42.portal_pellet_on] positioned ~ ~-1 ~ run tag @e[distance=...75,tag=42.portal_cube_tp,tag=42.portal_turret] add 42.portal_pellet_kill_cube
execute if entity @s[tag=!42.portal_pellet_on] positioned ~ ~-.5 ~ run tag @e[distance=...75,tag=42.portal_cube_tp,tag=42.portal_radio] add 42.portal_pellet_kill_cube
execute if entity @e[tag=42.portal_pellet_kill_cube] at @s run function 42:portal/pellet/pellet/kill_cube
execute if entity @s[tag=42.portal_pellet_kill] at @a[tag=42.portal_pellet_kill] run damage @p[tag=42.portal_pellet_kill] 500 player_explosion by @s
execute if entity @s[tag=42.portal_pellet_kill] as @e[tag=42.portal_pellet_kill,tag=42.portal_pellet_kill_cube] at @s run function 42:portal/cube/fizzle 
execute if entity @s[tag=42.portal_pellet_kill] run function 42:portal/pellet/pellet/fizzle
tag @e remove 42.portal_pellet_kill
tag @e remove 42.portal_pellet_kill_cube
execute if block ~ ~ ~ water run function 42:portal/pellet/pellet/fizzle
execute if block ~ ~ ~ lava run function 42:portal/pellet/pellet/fizzle
scoreboard players remove @s 42.portal_y 1
execute if entity @s[tag=!42.portal_pellet_on] if score @s 42.portal_y matches 1.. run function 42:portal/pellet/pellet/move
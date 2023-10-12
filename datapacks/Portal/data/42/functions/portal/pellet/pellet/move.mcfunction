execute if entity @s[tag=!42.portal_pellet_on] at @s if block ~ ~ ~ #42:portal_cube_pass if block ^ ^ ^.4 #42:portal_cube_pass run tp ^ ^ ^.05
execute if entity @s[tag=!42.portal_pellet_on] at @s if block ~ ~ ~ #42:portal_cube_pass unless block ^ ^ ^.4 #42:portal_cube_pass run function 42:portal/pellet/pellet/bounce
execute if entity @s[tag=!42.portal_pellet_on] if entity @a[distance=...75,gamemode=!spectator] run function 42:portal/pellet/pellet/kill
scoreboard players remove @s 42.portal_y 1
execute if entity @s[tag=!42.portal_pellet_on] if score @s 42.portal_y matches 1.. run function 42:portal/pellet/pellet/move
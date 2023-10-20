execute if entity @s[tag=!42.portal_pellet_on] at @s positioned ^ ^ ^.1 positioned ~-.25 ~-.25 ~-.25 run function 42:portal/pellet/pellet/move_test
execute if entity @s[tag=!42.portal_pellet_on,tag=42.portal_pellet_valid] at @s run tp ^ ^ ^.05
execute if entity @s[tag=!42.portal_pellet_on,tag=!42.portal_pellet_valid] at @s run function 42:portal/pellet/pellet/bounce
tag @s remove 42.portal_pellet_valid
#
tag @e remove 42.portal_pellet_try_kill
tag @e remove 42.portal_pellet_kill
execute if entity @s[tag=!42.portal_pellet_on] positioned ~-.5 ~-.5 ~-.5 run tag @e[dx=0,dy=0,dz=0] add 42.portal_pellet_try_kill
#
tag @a[tag=42.portal_pellet_try_kill,gamemode=!spectator] add 42.portal_pellet_kill
tag @e[tag=42.portal_pellet_try_kill,tag=42.portal_cube_tp,tag=42.portal_turret] add 42.portal_pellet_kill
tag @e[tag=42.portal_pellet_try_kill,tag=42.portal_cube_tp,tag=42.portal_radio] add 42.portal_pellet_kill
tag @e[tag=42.portal_pellet_try_kill,tag=42.portal_pellet] add 42.portal_pellet_kill
#
tag @s remove 42.portal_pellet_kill
tag @e remove 42.portal_pellet_try_kill
execute if entity @e[tag=42.portal_pellet_kill] run tag @s add 42.portal_pellet_kill
#
execute as @a[tag=42.portal_pellet_kill,gamemode=!spectator,gamemode=!creative] run damage @s 500 player_explosion by @e[tag=42.portal_pellet_kill,limit=1,sort=nearest]
execute as @e[tag=42.portal_pellet_kill,tag=42.portal_cube_tp] at @s run function 42:portal/cube/fizzle 
execute as @e[tag=42.portal_pellet_kill,tag=42.portal_pellet] run function 42:portal/pellet/pellet/fizzle
tag @e remove 42.portal_pellet_kill
execute if block ~ ~ ~ water run function 42:portal/pellet/pellet/fizzle
execute if block ~ ~ ~ lava run function 42:portal/pellet/pellet/fizzle
scoreboard players remove @s 42.portal_y 1
execute if entity @s[tag=!42.portal_pellet_on] if score @s 42.portal_y matches 1.. run function 42:portal/pellet/pellet/move
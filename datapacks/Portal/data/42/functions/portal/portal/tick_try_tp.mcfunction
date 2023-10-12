tag @e remove 42.portal_tp
execute if score @s 42.portal_y matches 0 positioned ~-.5 ~-.5 ~-.5 positioned ^ ^-1 ^ run tag @e[dx=0,dy=0,dz=0] add 42.portal_tp
execute if score @s 42.portal_y matches 0 positioned ~-.5 ~-.5 ~-.5 positioned ^ ^ ^ run tag @e[dx=0,dy=0,dz=0] add 42.portal_tp
execute if score @s 42.portal_y matches 0 positioned ~-.5 ~-.5 ~-.5 positioned ^ ^1 ^ run tag @e[dx=0,dy=0,dz=0] add 42.portal_tp
execute unless score @s 42.portal_y matches 0 positioned ~-.5 ~-.5 ~-.5 positioned ^ ^-1 ^ positioned ^ ^ ^-.5 run tag @e[dx=0,dy=0,dz=0] add 42.portal_tp
execute unless score @s 42.portal_y matches 0 positioned ~-.5 ~-.5 ~-.5 positioned ^ ^ ^ positioned ^ ^ ^-.5 run tag @e[dx=0,dy=0,dz=0] add 42.portal_tp
execute unless score @s 42.portal_y matches 0 positioned ~-.5 ~-.5 ~-.5 positioned ^ ^1 ^ positioned ^ ^ ^-.5 run tag @e[dx=0,dy=0,dz=0] add 42.portal_tp
execute if entity @e[tag=42.portal_pellet,tag=!42.portal_pellet_on,distance=..2.5] run function 42:portal/portal/tick_try_tp_pellet
execute if score @s 42.portal_y matches 0 as @e[tag=42.portal_tp] at @s unless block ~ ~ ~ #42:portal_blocks run tag @s remove 42.portal_tp
execute as @e[tag=42.portal_tp] if entity @s[tag=42.portal_cube_tp,tag=!42.portal_motion_tp] run tag @s remove 42.portal_tp
execute as @e[tag=42.portal_tp] if entity @s[tag=42.portal_cube_col] run tag @s remove 42.portal_tp
execute as @e[tag=42.portal_tp] if entity @s[type=#42:portal_exempt] unless entity @s[type=player,tag=!42.portal_motion,gamemode=!spectator] unless entity @s[tag=42.portal_cube_hit,tag=!42.portal_cube_held,tag=!42.portal_motion_tp] unless entity @s[tag=42.portal_motion_tp] unless entity @s[tag=42.portal_pellet,tag=!42.portal_pellet_on] run tag @s remove 42.portal_tp
execute if entity @e[tag=42.portal_tp] run function 42:portal/portal/tick_tp
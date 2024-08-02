tag @e remove 42.portal_tp
tag @e remove 42.portal_tp_this
tag @s add 42.portal_tp_this

execute if score @s 42.portal_y matches 0 positioned ~-.5 ~-.5 ~-.5 positioned ^ ^-1 ^ run tag @e[dx=0,dy=2,dz=0] add 42.portal_tp
execute unless score @s 42.portal_y matches 0 positioned ^ ^-.5 ^ align xyz positioned ~ ~ ~ run tag @e[dx=0,dy=0,dz=0] add 42.portal_tp
execute unless score @s 42.portal_y matches 0 positioned ^ ^.5 ^ align xyz positioned ~ ~ ~ run tag @e[dx=0,dy=0,dz=0] add 42.portal_tp
execute unless score @s 42.portal_y matches 0 positioned ^ ^1.5 ^ align xyz positioned ~ ~ ~ run tag @e[dx=0,dy=0,dz=0] add 42.portal_tp

execute if score @s 42.portal_y matches 0 run tag @e remove 42.portal_tp_inblock
execute if score @s 42.portal_y matches 0 as @e[tag=42.portal_tp] at @s align xyz positioned ~.5 ~1 ~.5 if entity @e[tag=42.portal_tp_this,distance=...25] run tag @s add 42.portal_tp_inblock
execute if score @s 42.portal_y matches 0 as @e[tag=42.portal_tp,tag=!42.portal_tp_inblock] at @s align xyz positioned ~.5 ~ ~.5 if entity @e[tag=42.portal_tp_this,distance=...25] run tag @s add 42.portal_tp_inblock
execute if score @s 42.portal_y matches 0 as @e[tag=42.portal_tp,tag=!42.portal_tp_inblock] at @s align xyz positioned ~.5 ~-1 ~.5 if entity @e[tag=42.portal_tp_this,distance=...25] run tag @s add 42.portal_tp_inblock
execute if score @s 42.portal_y matches 0 run tag @e[tag=!42.portal_tp_inblock] remove 42.portal_tp
execute if score @s 42.portal_y matches 0 run tag @e remove 42.portal_tp_inblock
execute if score @s 42.portal_y matches -2 positioned ~-3 ~ ~-3 positioned ~ ~-.5 ~ as @e[tag=42.portal_tp] unless entity @s[dx=6,dy=0,dz=6] run tag @s remove 42.portal_tp
execute if score @s 42.portal_y matches 2 positioned ~-3 ~ ~-3 positioned ~ ~-.25 ~ as @e[tag=42.portal_tp] unless entity @s[dx=6,dy=0,dz=6] run tag @s remove 42.portal_tp

execute as @e[tag=42.portal_tp] if entity @s[tag=42.portal_cube_tp,tag=!42.portal_motion_tp] run tag @s remove 42.portal_tp
execute as @e[tag=42.portal_tp] if entity @s[tag=42.portal_cube_col] run tag @s remove 42.portal_tp
execute as @e[tag=42.portal_tp] if entity @s[type=#42:portal_exempt] unless entity @s[type=player,tag=!42.portal_motion,gamemode=!spectator] unless entity @s[tag=42.portal_cube_hit,tag=!42.portal_cube_held,tag=!42.portal_motion_tp] unless entity @s[tag=42.portal_motion_tp] unless entity @s[tag=42.portal_pellet,tag=!42.portal_pellet_on] run tag @s remove 42.portal_tp

execute if entity @e[tag=42.portal_tp] run scoreboard players set @e[tag=42.portal,tag=42.portal_pair] 42.portal_cool 10
execute if entity @e[tag=42.portal_tp] run function 42:portal/portal/tp/tick_tp
tag @s remove 42.portal_tp_this
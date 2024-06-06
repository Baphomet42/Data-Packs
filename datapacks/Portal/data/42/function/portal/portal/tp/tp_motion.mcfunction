tag @e remove 42.portal_temp
execute if entity @s[type=armor_stand] on passengers run tag @s add 42.portal_temp
#
execute at @e[tag=42.portal_tp2] positioned ^ ^.5 ^.6 run tp @s ~ ~ ~
execute at @e[tag=42.portal_tp2,scores={42.portal_y=0}] positioned ^ ^-.5 ^.6 run tp @s ~ ~ ~
#
execute as @e[tag=42.portal_temp] at @e[tag=42.portal_tp2,scores={42.portal_z=0}] positioned ^ ^-.5 ^.6 rotated as @s run tp @s ~ ~ ~ ~180 ~
execute as @e[tag=42.portal_temp] at @e[tag=42.portal_tp2,scores={42.portal_z=1}] positioned ^ ^-.5 ^.6 rotated as @s run tp @s ~ ~ ~ ~-90 ~
execute as @e[tag=42.portal_temp] at @e[tag=42.portal_tp2,scores={42.portal_z=2}] positioned ^ ^-.5 ^.6 rotated as @s run tp @s ~ ~ ~ ~ ~
execute as @e[tag=42.portal_temp] at @e[tag=42.portal_tp2,scores={42.portal_z=3}] positioned ^ ^-.5 ^.6 rotated as @s run tp @s ~ ~ ~ ~90 ~
execute as @e[tag=42.portal_temp] at @e[tag=42.portal_tp2,scores={42.portal_w=-2}] positioned ^ ^-.5 ^.6 rotated as @s run tp @s ~ ~ ~ ~ ~-90
execute as @e[tag=42.portal_temp] at @e[tag=42.portal_tp2,scores={42.portal_w=2}] positioned ^ ^-.5 ^.6 rotated as @s run tp @s ~ ~ ~ ~ ~90
#execute as @e[tag=42.portal_temp] at @e[tag=42.portal_tp2,scores={42.portal_w=-4}] positioned ^ ^-.5 ^.6 rotated as @s run tp @s ~ ~ ~ ~ ~-180
#execute as @e[tag=42.portal_temp] at @e[tag=42.portal_tp2,scores={42.portal_w=4}] positioned ^ ^-.5 ^.6 rotated as @s run tp @s ~ ~ ~ ~ ~180
#
ride @e[tag=42.portal_temp,limit=1] mount @s
execute as @e[tag=42.portal_temp,limit=1,type=player] run function 42:portal/player/schedule_actionbar
tag @e remove 42.portal_temp
#
execute if entity @e[tag=42.portal_tp1,scores={42.portal_y=0,42.portal_x=0}] run function 42:portal/portal/motrot/in/s
execute if entity @e[tag=42.portal_tp1,scores={42.portal_y=0,42.portal_x=1}] run function 42:portal/portal/motrot/in/w
execute if entity @e[tag=42.portal_tp1,scores={42.portal_y=0,42.portal_x=2}] run function 42:portal/portal/motrot/in/n
execute if entity @e[tag=42.portal_tp1,scores={42.portal_y=0,42.portal_x=3}] run function 42:portal/portal/motrot/in/e
execute if entity @e[tag=42.portal_tp1,scores={42.portal_y=-2}] run function 42:portal/portal/motrot/in/f
execute if entity @e[tag=42.portal_tp1,scores={42.portal_y=2}] run function 42:portal/portal/motrot/in/c
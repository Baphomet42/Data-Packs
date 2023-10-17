
execute at @e[tag=42.portal_tp2,scores={42.portal_z=0}] positioned ^ ^-.5 ^1.6 rotated as @s run tp @s ~ ~ ~ ~180 ~
execute at @e[tag=42.portal_tp2,scores={42.portal_z=1}] positioned ^ ^-.5 ^1.6 rotated as @s run tp @s ~ ~ ~ ~-90 ~
execute at @e[tag=42.portal_tp2,scores={42.portal_z=2}] positioned ^ ^-.5 ^1.6 rotated as @s run tp @s ~ ~ ~ ~ ~
execute at @e[tag=42.portal_tp2,scores={42.portal_z=3}] positioned ^ ^-.5 ^1.6 rotated as @s run tp @s ~ ~ ~ ~90 ~
execute at @e[tag=42.portal_tp2,scores={42.portal_w=-2}] positioned ^ ^-.5 ^1.6 rotated as @s run tp @s ~ ~ ~ ~ ~-90
execute at @e[tag=42.portal_tp2,scores={42.portal_w=2}] positioned ^ ^-.5 ^1.6 rotated as @s run tp @s ~ ~ ~ ~ ~90
execute as @p run scoreboard players list @e[tag=42.portal_tp2,limit=1]
execute if entity @s[nbt={abilities:{flying:0b}}] if entity @e[tag=42.portal_tp1,scores={42.portal_y=0..}] run function 42:portal/portal/tp_player
execute if entity @s[nbt={abilities:{flying:0b}}] if entity @e[tag=42.portal_tp1,scores={42.portal_y=..-1}] run function 42:portal/portal/tp_player_air
execute if entity @s[nbt={abilities:{flying:1b}}] at @e[tag=42.portal_tp2,scores={42.portal_z=0}] positioned ^ ^-.5 ^1.6 rotated as @s run tp @s ~ ~ ~ ~180 ~
execute if entity @s[nbt={abilities:{flying:1b}}] at @e[tag=42.portal_tp2,scores={42.portal_z=1}] positioned ^ ^-.5 ^1.6 rotated as @s run tp @s ~ ~ ~ ~-90 ~
execute if entity @s[nbt={abilities:{flying:1b}}] at @e[tag=42.portal_tp2,scores={42.portal_z=2}] positioned ^ ^-.5 ^1.6 rotated as @s run tp @s ~ ~ ~ ~ ~
execute if entity @s[nbt={abilities:{flying:1b}}] at @e[tag=42.portal_tp2,scores={42.portal_z=3}] positioned ^ ^-.5 ^1.6 rotated as @s run tp @s ~ ~ ~ ~90 ~
execute if entity @s[nbt={abilities:{flying:1b}}] at @e[tag=42.portal_tp2,scores={42.portal_w=-2}] positioned ^ ^-.5 ^1.6 rotated as @s run tp @s ~ ~ ~ ~ ~-90
execute if entity @s[nbt={abilities:{flying:1b}}] at @e[tag=42.portal_tp2,scores={42.portal_w=2}] positioned ^ ^-.5 ^1.6 rotated as @s run tp @s ~ ~ ~ ~ ~90
#execute if entity @s[nbt={abilities:{flying:1b}}] at @e[tag=42.portal_tp2,scores={42.portal_w=-4}] positioned ^ ^-.5 ^1.6 rotated as @s run tp @s ~ ~ ~ ~ ~-180
#execute if entity @s[nbt={abilities:{flying:1b}}] at @e[tag=42.portal_tp2,scores={42.portal_w=4}] positioned ^ ^-.5 ^1.6 rotated as @s run tp @s ~ ~ ~ ~ ~180
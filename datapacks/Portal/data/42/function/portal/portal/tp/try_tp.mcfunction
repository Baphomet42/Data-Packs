execute if entity @s[type=player] at @s run function 42:portal/portal/tp/tp_player_branch
execute if entity @s[tag=42.tag.portal.cube.hit] at @s run function 42:portal/portal/tp/tp_cube
execute if entity @s[tag=42.tag.portal.pellet] at @s run function 42:portal/portal/tp/tp_pellet
execute if entity @s[tag=42.tag.portal.pellet.catcher.laser] at @s run function 42:portal/portal/tp/tp_pellet_catcher_laser
execute if entity @s[type=!#42:portal/portal_exempt,tag=!42.tag.portal.motion.tp] if entity @e[tag=42.tag.portal.portal.tp1,scores={42.obj.portal.var.y=0..}] at @s run function 42:portal/portal/tp/tp_player
execute if entity @s[type=!#42:portal/portal_exempt,tag=!42.tag.portal.motion.tp] if entity @e[tag=42.tag.portal.portal.tp1,scores={42.obj.portal.var.y=..-1}] at @s run function 42:portal/portal/tp/tp_entity_air
execute if entity @s[tag=42.tag.portal.motion.tp] at @s run function 42:portal/portal/tp/tp_motion
execute as @e[tag=42.tag.portal.portal.tp1] at @s run playsound minecraft:entity.allay.item_given block @a ~ ~ ~ 1 .5
execute as @e[tag=42.tag.portal.portal.tp2] at @s run playsound minecraft:entity.allay.item_given block @a ~ ~ ~ 1 .5
tag @s remove 42.tag.portal.portal.tp
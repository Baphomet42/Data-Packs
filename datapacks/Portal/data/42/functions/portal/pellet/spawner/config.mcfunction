tag @e remove 42.portal_pellet_spawner_this
tag @s add 42.portal_pellet_spawner_this
#
scoreboard players operation @e[tag=42.portal_pellet_spawn,tag=42.portal_pellet] 42.portal_lvl = @s 42.portal_lvl
scoreboard players operation @e[tag=42.portal_pellet_spawn] 42.portal_id = @s 42.portal_id
#
execute as @e[tag=42.portal_pellet_spawn,tag=42.portal_pellet] at @s rotated as @e[tag=42.portal_pellet_spawner_this,limit=1] run tp @s ~ ~-.5 ~ ~ ~
#
tag @s remove 42.portal_pellet_spawner_this
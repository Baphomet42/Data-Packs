function 42:portal/pellet/emitter/kill_pellets
tag @s remove 42.portal_temp
execute if entity @s[tag=42.portal_spawn_super_pellet] run tag @s add 42.portal_temp
tag @s add 42.portal_spawn_super_pellet
execute if entity @s[tag=42.portal_temp] run tag @s remove 42.portal_spawn_super_pellet
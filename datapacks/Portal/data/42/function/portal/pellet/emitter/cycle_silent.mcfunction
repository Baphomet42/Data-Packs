function 42:portal/pellet/emitter/kill_pellets
tag @s remove 42.tag.portal.temp
execute if entity @s[tag=42.tag.portal.tool.spawn.pellet.super] run tag @s add 42.tag.portal.temp
tag @s add 42.tag.portal.tool.spawn.pellet.super
execute if entity @s[tag=42.tag.portal.temp] run tag @s remove 42.tag.portal.tool.spawn.pellet.super
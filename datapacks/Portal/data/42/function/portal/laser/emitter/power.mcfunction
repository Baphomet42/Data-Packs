function 42:portal/tag_id
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.laser.emitter.glass] run data modify entity @s block_state set value "minecraft:red_stained_glass"
tag @s[tag=42.tag.portal.laser.emitter] add 42.tag.portal.laser.emitter.on

execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.laser.beam] at @s run function 42:portal/laser/beam/fizzle
execute positioned ^ ^ ^-.05 run function 42:portal/laser/beam/spawn_ray

tag @e remove 42.tag.portal.id
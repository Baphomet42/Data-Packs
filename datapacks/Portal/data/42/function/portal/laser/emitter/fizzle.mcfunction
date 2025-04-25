function 42:portal/tag_id
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.laser.beam] at @s run function 42:portal/laser/beam/fizzle
kill @e[tag=42.tag.portal.id,tag=42.tag.portal.laser.emitter.group]
tag @e remove 42.tag.portal.id
function 42:portal/tag_id
execute unless entity @e[tag=42.tag.portal.id,tag=42.tag.portal.laser.emitter,tag=42.tag.portal.emitter.on] at @s run function 42:portal/laser/beam/fizzle
execute unless block ~ ~ ~ #42:portal/portal_bullet_pass at @s run function 42:portal/laser/beam/fizzle_starting
tag @e remove 42.tag.portal.id
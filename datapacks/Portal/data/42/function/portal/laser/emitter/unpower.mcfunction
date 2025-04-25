function 42:portal/tag_id
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.laser.emitter.glass] run data modify entity @s block_state.Name set value "minecraft:gray_stained_glass"
tag @s[tag=42.tag.portal.laser.emitter] remove 42.tag.portal.laser.emitter.on

execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.laser.beam] at @s run function 42:portal/laser/beam/fizzle
tag @e remove 42.tag.portal.id
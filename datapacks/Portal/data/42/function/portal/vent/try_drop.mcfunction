execute if entity @s[tag=42.tag.portal.vent.on] run function 42:portal/tag_id
execute if entity @s[tag=42.tag.portal.vent.on] unless entity @e[tag=42.tag.portal.cube.tp,tag=42.tag.portal.id] run function 42:portal/vent/drop
execute if entity @s[tag=42.tag.portal.vent.on] run tag @e remove 42.tag.portal.id
execute if entity @s[tag=42.tag.portal.dropper.on] run function 42:portal/tag_id
execute if entity @s[tag=42.tag.portal.dropper.on] unless entity @e[tag=42.tag.portal.cube.tp,tag=42.tag.portal.id] run function 42:portal/dropper/drop
execute if entity @s[tag=42.tag.portal.dropper.on] run tag @e remove 42.tag.portal.id
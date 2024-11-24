function 42:portal/tag_id
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.tp,limit=1] run function 42:portal/launch/launch_entity
tag @e remove 42.tag.portal.id
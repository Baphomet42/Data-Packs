function 42:portal/tag_id
execute as @e[tag=42.portal_id,tag=42.portal_cube_tp,limit=1] run function 42:portal/launch/launch_entity
tag @e remove 42.portal_id
execute if entity @s[tag=42.portal_dropper_on] run function 42:portal/tag_id
execute if entity @s[tag=42.portal_dropper_on] unless entity @e[tag=42.portal_cube_tp,tag=42.portal_id] run function 42:portal/dropper/drop
execute if entity @s[tag=42.portal_dropper_on] run tag @e remove 42.portal_id
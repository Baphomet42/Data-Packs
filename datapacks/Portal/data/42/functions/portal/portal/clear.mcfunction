function 42:portal/portal/tag_portals
execute as @e[tag=42.portal_id,tag=42.portal] at @s run function 42:portal/portal/fizzle
tag @e remove 42.portal_id
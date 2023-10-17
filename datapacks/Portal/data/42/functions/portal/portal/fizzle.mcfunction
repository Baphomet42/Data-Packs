function 42:portal/portal/tag_pair
execute as @e[tag=42.portal_wall,tag=42.portal_pair] at @s run function 42:portal/portal/replace_wall
execute if entity @s[tag=42.portal_a] run kill @e[tag=42.portal_pair,tag=42.portal_a]
execute if entity @s[tag=42.portal_b] run kill @e[tag=42.portal_pair,tag=42.portal_b]
execute as @e[tag=42.portal_pair,tag=42.portal] at @s run function 42:portal/portal/set_blocks
tag @e remove 42.portal_pair
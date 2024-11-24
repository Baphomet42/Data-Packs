function 42:portal/portal/tag_pair
execute as @e[tag=42.tag.portal.portal.wall,tag=42.tag.portal.portal.pair] at @s run function 42:portal/portal/replace_wall
execute as @e[tag=42.tag.portal.portal,tag=42.tag.portal.portal.pair] at @s run function 42:portal/portal/push_entities
execute if entity @s[tag=42.tag.portal.portal.a] run kill @e[tag=42.tag.portal.portal.pair,tag=42.tag.portal.portal.a]
execute if entity @s[tag=42.tag.portal.portal.b] run kill @e[tag=42.tag.portal.portal.pair,tag=42.tag.portal.portal.b]
execute as @e[tag=42.tag.portal.portal.pair,tag=42.tag.portal.portal] at @s run function 42:portal/portal/set_blocks
tag @e remove 42.tag.portal.portal.pair
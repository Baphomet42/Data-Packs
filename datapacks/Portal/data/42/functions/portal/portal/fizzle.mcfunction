function 42:portal/tag_id
execute positioned ^ ^.5 ^ run fill ^-1 ^-1 ^ ^1 ^1 ^ quartz_block
execute if entity @s[tag=42.portal_blue] run kill @e[tag=42.portal_id,tag=42.portal_blue]
execute if entity @s[tag=42.portal_orange] run kill @e[tag=42.portal_id,tag=42.portal_orange]
execute as @e[tag=42.portal_id,tag=42.portal] at @s run function 42:portal/portal/set_blocks
tag @e remove 42.portal_id
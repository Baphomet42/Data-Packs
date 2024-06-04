function 42:portal/portal/tag_pair
execute if entity @e[tag=42.portal_pair,tag=42.portal_a] if entity @e[tag=42.portal_pair,tag=42.portal_b] run function 42:portal/pellet/catcher/laser/try_portal2
tag @e remove 42.portal_pair
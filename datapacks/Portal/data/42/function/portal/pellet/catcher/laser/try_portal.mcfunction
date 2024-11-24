function 42:portal/portal/tag_pair
execute if entity @e[tag=42.tag.portal.portal.pair,tag=42.tag.portal.portal.a] if entity @e[tag=42.tag.portal.portal.pair,tag=42.tag.portal.portal.b] run function 42:portal/pellet/catcher/laser/try_portal2
tag @e remove 42.tag.portal.portal.pair
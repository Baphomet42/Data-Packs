function 42:portal/tag_id
execute if entity @e[tag=42.portal_blue,tag=42.portal_id] if entity @e[tag=42.portal_orange,tag=42.portal_id] run function 42:portal/pellet/catcher/laser/try_portal2
tag @e remove 42.portal_id
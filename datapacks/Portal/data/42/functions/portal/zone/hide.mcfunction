function 42:portal/tag_id
tag @s remove 42.portal_zone_show
execute as @e[tag=42.portal_id,tag=42.portal_zone_group] run data modify entity @s view_range set value 0f
tag @e remove 42.portal_id
execute if score @s 42.portal_x matches 1 if score @s 42.portal_lvl matches ..0 run function 42:portal/zone/show
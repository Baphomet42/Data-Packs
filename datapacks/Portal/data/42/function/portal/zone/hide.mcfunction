function 42:portal/tag_id
tag @s remove 42.tag.portal.zone.show
kill @e[tag=42.tag.portal.id,tag=42.tag.portal.zone.group,tag=!42.tag.portal.zone]
data modify entity @s view_range set value 0f
tag @e remove 42.tag.portal.id
execute if score @s 42.obj.portal.var.x matches 1 if score @s 42.obj.portal.lvl matches ..0 run function 42:portal/zone/show
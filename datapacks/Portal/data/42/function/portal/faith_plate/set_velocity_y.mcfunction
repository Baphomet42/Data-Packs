function 42:portal/tag_selected
execute unless entity @e[tag=42.tag.portal.selected,tag=42.tag.portal.faith_plate] run function 42:portal/tools/sel_error
$scoreboard players set @e[tag=42.tag.portal.selected,tag=42.tag.portal.faith_plate] 42.obj.portal.var.y $(y)
tag @e remove 42.tag.portal.selected
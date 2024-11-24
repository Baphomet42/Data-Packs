function 42:portal/tag_selected
execute unless entity @e[tag=42.tag.portal.selected,tag=42.tag.portal.launch] run function 42:portal/tools/sel_error
$scoreboard players set @e[tag=42.tag.portal.selected,tag=42.tag.portal.launch] 42.obj.portal.var.x $(x)
tag @e remove 42.tag.portal.selected
function 42:portal/tag_selected
execute unless entity @e[tag=42.portal_selected,tag=42.portal_launch] run function 42:portal/tools/sel_error
$scoreboard players set @e[tag=42.portal_selected,tag=42.portal_launch] 42.portal_x $(x)
tag @e remove 42.portal_selected
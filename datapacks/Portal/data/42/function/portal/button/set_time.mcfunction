function 42:portal/tag_selected
execute unless entity @e[tag=42.tag.portal.selected,tag=42.tag.portal.pedestal] run function 42:portal/tools/sel_error
$scoreboard players set @e[tag=42.tag.portal.selected,tag=42.tag.portal.pedestal] 42.obj.portal.var.x $(ticks)
execute as @e[tag=42.tag.portal.selected,tag=42.tag.portal.pedestal] if score @s 42.obj.portal.var.x matches 0..19 run scoreboard players set @s 42.obj.portal.var.x 20
execute as @e[tag=42.tag.portal.selected,tag=42.tag.portal.pedestal] run scoreboard players set @s 42.obj.portal.time 11
tag @e remove 42.tag.portal.selected
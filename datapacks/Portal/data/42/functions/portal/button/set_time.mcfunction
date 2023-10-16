function 42:portal/tag_selected
execute unless entity @e[tag=42.portal_selected,tag=42.portal_pedestal] run function 42:portal/tools/sel_error
$scoreboard players set @e[tag=42.portal_selected,tag=42.portal_pedestal] 42.portal_x $(ticks)
execute as @e[tag=42.portal_selected,tag=42.portal_pedestal] if score @s 42.portal_x matches 0..19 run scoreboard players set @s 42.portal_x 20
execute as @e[tag=42.portal_selected,tag=42.portal_pedestal] run scoreboard players set @s 42.portal_time 11
tag @e remove 42.portal_selected
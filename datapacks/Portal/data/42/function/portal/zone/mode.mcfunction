function 42:portal/tag_id
$scoreboard players set @s 42.portal_x $(x)

execute if score @s 42.portal_x matches 0 as @e[tag=42.portal_id,tag=42.portal_zone_lbl] run data modify entity @s text set value '{"text":"Load Zone"}'
execute if score @s 42.portal_x matches 0 run data modify entity @s CustomName set value '{"text":"Load Zone"}'
execute if score @s 42.portal_x matches 1 as @e[tag=42.portal_id,tag=42.portal_zone_lbl] run data modify entity @s text set value '{"text":"Trigger Zone"}'
execute if score @s 42.portal_x matches 1 run data modify entity @s CustomName set value '{"text":"Trigger Zone"}'
execute if score @s 42.portal_x matches 2 as @e[tag=42.portal_id,tag=42.portal_zone_lbl] run data modify entity @s text set value '{"text":"Death Zone"}'
execute if score @s 42.portal_x matches 2 run data modify entity @s CustomName set value '{"text":"Death Zone"}'

tag @s remove 42.portal_zone_cool
tag @e remove 42.portal_id
function 42:portal/zone/update
execute as @e[tag=42.portal_selected,type=!player] at @s run function 42:portal/tools/sel_new
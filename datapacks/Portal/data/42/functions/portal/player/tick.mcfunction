execute if entity @s[nbt={OnGround:0b}] store result score @s 42.portal_y run data get entity @s Motion[1] 1000
execute if score @s 42.portal_death matches 1.. at @s run function 42:portal/level/unload
execute if data entity @s SelectedItem.tag.portal_type at @s run function 42:portal/gun/tick
execute if score @s 42.portal_sel matches 1.. at @s run function 42:portal/tools/sel_tick_player
#
tag @e remove 42.portal_temp
function 42:portal/generic/entity_col/test_1p
tag @e[tag=42.portal_grill_hit,scores={42.portal_col=2}] add 42.portal_temp
execute positioned ~ ~1.75 ~ run function 42:portal/generic/entity_col/test_1p
tag @e[tag=42.portal_grill_hit,scores={42.portal_col=2}] add 42.portal_temp
execute if entity @e[tag=42.portal_temp] run function 42:portal/portal/clear_player
tag @e remove 42.portal_temp
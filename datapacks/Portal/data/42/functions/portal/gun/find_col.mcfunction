scoreboard players set @s 42.portal_col 0
tag @s remove 42.portal_gun_valid
function 42:portal/generic/test_col
execute if score @s 42.portal_col matches 1 run tag @s add 42.portal_gun_valid
#
execute at @s run function 42:portal/generic/entity_col/test_1p
execute if entity @e[tag=42.portal_grill_hit,scores={42.portal_col=2}] run particle block{block_state:{Name:light_blue_stained_glass}} ~ ~ ~ 0 0 0 0 1 force 
execute if entity @e[tag=42.portal_grill_hit,scores={42.portal_col=2}] run kill @s
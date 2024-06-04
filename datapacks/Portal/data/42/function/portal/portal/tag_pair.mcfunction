tag @e remove 42.portal_pair
function 42:portal/tag_id
scoreboard players set 42.portal 42.portal_temp 0
execute unless score @s 42.portal_link matches 0 run scoreboard players operation 42.portal 42.portal_temp = @s 42.portal_link
execute as @e[tag=42.portal_id,tag=42.portal_group] if score @s 42.portal_link = 42.portal 42.portal_temp run tag @s add 42.portal_pair
tag @e remove 42.portal_id
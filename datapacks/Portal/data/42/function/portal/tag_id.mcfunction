tag @e remove 42.portal_id
scoreboard players set 42.portal 42.portal_temp 0
scoreboard players operation 42.portal 42.portal_temp = @s 42.portal_id
execute as @e if score @s 42.portal_id = 42.portal 42.portal_temp run tag @s add 42.portal_id
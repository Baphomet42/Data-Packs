tag @e remove 42.portal_id
scoreboard players operation 42.portal 42.portal_temp = @s 42.portal_id
execute as @e[scores={42.portal_id=-2147483648..2147483647}] if score @s 42.portal_id = 42.portal 42.portal_temp run tag @s add 42.portal_id
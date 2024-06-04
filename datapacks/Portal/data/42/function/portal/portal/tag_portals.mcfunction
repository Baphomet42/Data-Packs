tag @e remove 42.portal_id
scoreboard players set 42.portal 42.portal_temp 0
execute store result score 42.portal 42.portal_temp run data get entity @s UUID[0]
execute as @e[tag=42.portal] if score @s 42.portal_id = 42.portal 42.portal_temp run tag @s add 42.portal_id
execute unless entity @s[type=player] run tag @e remove 42.portal_id
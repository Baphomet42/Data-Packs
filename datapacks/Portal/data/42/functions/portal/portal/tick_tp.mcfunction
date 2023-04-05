tag @e remove 42.portal_tp1
tag @e remove 42.portal_tp2
tag @s add 42.portal_tp1
execute if entity @s[tag=42.portal_blue] run tag @e[tag=42.portal_id,tag=42.portal,tag=42.portal_orange] add 42.portal_tp2
execute if entity @s[tag=42.portal_orange] run tag @e[tag=42.portal_id,tag=42.portal,tag=42.portal_blue] add 42.portal_tp2
#
execute as @e[tag=42.portal_tp] at @s run function 42:portal/portal/try_tp
tag @e remove 42.portal_tp1
tag @e remove 42.portal_tp2
#
scoreboard players set @e[tag=42.portal,tag=42.portal_id] 42.portal_cool 10
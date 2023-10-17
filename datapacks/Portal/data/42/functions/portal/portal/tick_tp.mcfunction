tag @e remove 42.portal_tp1
tag @e remove 42.portal_tp2
tag @s add 42.portal_tp1
execute if entity @s[tag=42.portal_a] run tag @e[tag=42.portal_pair,tag=42.portal,tag=42.portal_b] add 42.portal_tp2
execute if entity @s[tag=42.portal_b] run tag @e[tag=42.portal_pair,tag=42.portal,tag=42.portal_a] add 42.portal_tp2
#
execute as @e[tag=42.portal_tp] at @s run function 42:portal/portal/try_tp
tag @e remove 42.portal_tp1
tag @e remove 42.portal_tp2
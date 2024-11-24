tag @e remove 42.tag.portal.portal.tp1
tag @e remove 42.tag.portal.portal.tp2
tag @s add 42.tag.portal.portal.tp1
execute if entity @s[tag=42.tag.portal.portal.a] run tag @e[tag=42.tag.portal.portal.pair,tag=42.tag.portal.portal,tag=42.tag.portal.portal.b] add 42.tag.portal.portal.tp2
execute if entity @s[tag=42.tag.portal.portal.b] run tag @e[tag=42.tag.portal.portal.pair,tag=42.tag.portal.portal,tag=42.tag.portal.portal.a] add 42.tag.portal.portal.tp2

execute as @e[tag=42.tag.portal.portal.tp] at @s run function 42:portal/portal/tp/try_tp
tag @e remove 42.tag.portal.portal.tp1
tag @e remove 42.tag.portal.portal.tp2
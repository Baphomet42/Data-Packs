tag @e remove 42.portal_temp
execute if entity @s[tag=42.portal_turret_off] run tag @s add 42.portal_temp
execute if entity @s[tag=42.portal_temp] run function 42:portal/cube/turret/set_on
execute if entity @s[tag=!42.portal_temp] run function 42:portal/cube/turret/deactivate
tag @s remove 42.portal_temp
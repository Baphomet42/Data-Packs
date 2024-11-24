tag @e remove 42.tag.portal.temp
execute if entity @s[tag=42.tag.portal.turret.off] run tag @s add 42.tag.portal.temp
execute if entity @s[tag=42.tag.portal.temp] run function 42:portal/cube/turret/set_on
execute if entity @s[tag=!42.tag.portal.temp] run function 42:portal/cube/turret/deactivate
tag @s remove 42.tag.portal.temp
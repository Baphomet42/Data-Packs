tag @e remove 42.tag.portal.temp
execute if entity @s[tag=42.tag.portal.turret.oracle] run tag @s add 42.tag.portal.temp
execute if entity @s[tag=42.tag.portal.temp] run tag @s remove 42.tag.portal.turret.oracle
execute if entity @s[tag=42.tag.portal.temp] run function 42:portal/cube/turret/deactivate
execute if entity @s[tag=!42.tag.portal.temp] run function 42:portal/cube/turret/setup_oracle
tag @s remove 42.tag.portal.temp
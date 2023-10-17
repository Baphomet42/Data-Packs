tag @e remove 42.portal_temp
execute if entity @s[tag=42.portal_turret_oracle] run tag @s add 42.portal_temp
execute if entity @s[tag=42.portal_temp] run tag @s remove 42.portal_turret_oracle
execute if entity @s[tag=42.portal_temp] run function 42:portal/cube/turret/deactivate
execute if entity @s[tag=!42.portal_temp] run function 42:portal/cube/turret/setup_oracle
tag @s remove 42.portal_temp
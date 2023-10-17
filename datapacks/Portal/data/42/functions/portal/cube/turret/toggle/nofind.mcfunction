tag @e remove 42.portal_temp
execute if entity @s[tag=42.portal_turret_nofind] run tag @s add 42.portal_temp
tag @s add 42.portal_turret_nofind
execute if entity @s[tag=42.portal_temp] run tag @s remove 42.portal_turret_nofind
tag @s remove 42.portal_temp
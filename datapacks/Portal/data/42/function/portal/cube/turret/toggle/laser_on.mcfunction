tag @e remove 42.portal_temp
execute if entity @s[tag=42.portal_turret_always_on] run tag @s add 42.portal_temp
tag @s add 42.portal_turret_always_on
execute if entity @s[tag=42.portal_temp] run tag @s remove 42.portal_turret_always_on
tag @s remove 42.portal_temp
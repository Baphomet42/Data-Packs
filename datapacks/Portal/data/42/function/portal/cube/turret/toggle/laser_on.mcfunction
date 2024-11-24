tag @e remove 42.tag.portal.temp
execute if entity @s[tag=42.tag.portal.turret.always_on] run tag @s add 42.tag.portal.temp
tag @s add 42.tag.portal.turret.always_on
execute if entity @s[tag=42.tag.portal.temp] run tag @s remove 42.tag.portal.turret.always_on
tag @s remove 42.tag.portal.temp
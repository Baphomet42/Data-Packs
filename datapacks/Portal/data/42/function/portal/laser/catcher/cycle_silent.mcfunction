tag @s remove 42.tag.portal.temp
execute if entity @s[tag=42.tag.portal.laser.catcher.nolaser] run tag @s add 42.tag.portal.temp
tag @s add 42.tag.portal.laser.catcher.nolaser
execute if entity @s[tag=42.tag.portal.temp] run tag @s remove 42.tag.portal.laser.catcher.nolaser
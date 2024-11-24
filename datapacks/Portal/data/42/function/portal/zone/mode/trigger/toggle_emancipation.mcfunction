tag @s remove 42.tag.portal.temp
execute if entity @s[tag=42.tag.portal.zone.grill] run tag @s add 42.tag.portal.temp
tag @s add 42.tag.portal.zone.grill
tag @s[tag=42.tag.portal.temp] remove 42.tag.portal.zone.grill
tag @s remove 42.tag.portal.temp
function 42:portal/zone/update
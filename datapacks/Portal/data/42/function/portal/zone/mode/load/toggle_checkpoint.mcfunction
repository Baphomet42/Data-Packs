tag @s remove 42.tag.portal.temp
execute if entity @s[tag=42.tag.portal.zone.checkpoint] run tag @s add 42.tag.portal.temp
tag @s add 42.tag.portal.zone.checkpoint
tag @s[tag=42.tag.portal.temp] remove 42.tag.portal.zone.checkpoint
tag @s remove 42.tag.portal.temp
function 42:portal/zone/update
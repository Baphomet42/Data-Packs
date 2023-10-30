tag @s remove 42.portal_temp
execute if entity @s[tag=42.portal_zone_checkpoint] run tag @s add 42.portal_temp
tag @s add 42.portal_zone_checkpoint
tag @s[tag=42.portal_temp] remove 42.portal_zone_checkpoint
tag @s remove 42.portal_temp
function 42:portal/zone/update
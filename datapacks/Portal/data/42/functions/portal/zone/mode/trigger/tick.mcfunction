execute as @a[tag=42.portal_in_zone] unless score @s 42.portal_lvl = @e[tag=42.portal_zone_this,limit=1] 42.portal_lvl run tag @s remove 42.portal_in_zone
#
execute if entity @a[tag=42.portal_in_zone] run function 42:portal/zone/mode/trigger/activate
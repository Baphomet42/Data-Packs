execute as @a[tag=42.portal_in_zone] unless score @s 42.portal_lvl = @e[tag=42.portal_zone_this,limit=1] 42.portal_lvl run tag @s remove 42.portal_in_zone
#
execute if entity @a[tag=42.portal_in_zone] run tag @s add 42.portal_zone_cool
execute if entity @a[tag=42.portal_in_zone] if score @s 42.portal_xrot1 matches 1.. run function 42:portal/zone/mode/trigger/power
execute if entity @a[tag=42.portal_in_zone] if score @s 42.portal_xrot2 matches 1.. run function 42:portal/zone/mode/trigger/unpower
execute if entity @a[tag=42.portal_in_zone] if entity @s[tag=42.portal_zone_has_spawn] run function 42:portal/zone/mode/trigger/spawn
execute if entity @a[tag=42.portal_in_zone] if entity @s[tag=42.portal_zone_has_fizzle] run function 42:portal/zone/mode/trigger/fizzle
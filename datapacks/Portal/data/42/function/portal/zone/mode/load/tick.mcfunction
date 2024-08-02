execute as @a[tag=42.portal_in_zone] if score @s 42.portal_lvl matches ..0 if score @e[tag=42.portal_zone_this,limit=1] 42.portal_lvl matches ..0 run tag @s remove 42.portal_in_zone
execute as @a[tag=42.portal_in_zone] if score @s 42.portal_lvl = @e[tag=42.portal_zone_this,limit=1] 42.portal_lvl run tag @s remove 42.portal_in_zone

execute if entity @a[tag=42.portal_in_zone] if score @s 42.portal_lvl matches 1.. run function 42:portal/level/load
execute as @a[tag=42.portal_in_zone] run function 42:portal/zone/mode/load/player
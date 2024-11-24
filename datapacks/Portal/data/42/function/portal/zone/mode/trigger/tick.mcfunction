execute as @a[tag=42.tag.portal.in_zone] unless score @s 42.obj.portal.lvl = @e[tag=42.tag.portal.zone.this,limit=1] 42.obj.portal.lvl run tag @s remove 42.tag.portal.in_zone

execute if entity @a[tag=42.tag.portal.in_zone] run function 42:portal/zone/mode/trigger/activate
tag @s add 42.tag.portal.zone.cool
execute if score @s 42.obj.portal.xrot1 matches 1.. run function 42:portal/zone/mode/trigger/power
execute if score @s 42.obj.portal.xrot2 matches 1.. run function 42:portal/zone/mode/trigger/unpower
execute if entity @s[tag=42.tag.portal.zone.has_spawn] run function 42:portal/zone/mode/trigger/spawn
execute if entity @s[tag=42.tag.portal.zone.has_fizzle] run function 42:portal/zone/mode/trigger/fizzle
execute if entity @s[tag=42.tag.portal.zone.grill] as @a[tag=42.tag.portal.in_zone,limit=1,sort=nearest,distance=..15] at @s run function 42:portal/portal/clear
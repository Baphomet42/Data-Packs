execute unless score @s 42.obj.portal.var.a matches 1.. unless score @s 42.obj.portal.var.b matches 1.. run return fail
execute if score @s 42.obj.portal.var.a = @s 42.obj.portal.var.b run return fail
execute unless entity @a[tag=42.tag.portal.in_zone] run return fail

tag @s remove 42.tag.portal.zone_should_unload
execute if score @s 42.obj.portal.var.a matches 1.. as @e[scores={42.obj.portal.lvl=1..},tag=!42.tag.portal.elevator.main,tag=!42.tag.portal.zone.mode.load] if score @s 42.obj.portal.lvl = @e[tag=42.tag.portal.zone.this,limit=1] 42.obj.portal.var.a run tag @e[tag=42.tag.portal.zone.this,limit=1] add 42.tag.portal.zone_should_unload
execute if entity @s[tag=42.tag.portal.zone_should_unload] run scoreboard players set @a[tag=42.tag.portal.in_zone] 42.obj.portal.lvl 0
execute if entity @s[tag=42.tag.portal.zone_should_unload] run function 42:portal/zone/mode/load/unload_prev
tag @e remove 42.tag.portal.zone_should_unload

execute unless score @s 42.obj.portal.var.b matches 1.. run return fail
execute as @a[tag=42.tag.portal.in_zone] if score @s 42.obj.portal.lvl = @e[tag=42.tag.portal.zone.this,limit=1] 42.obj.portal.var.b run tag @s remove 42.tag.portal.in_zone
execute unless entity @a[tag=42.tag.portal.in_zone] run return fail

scoreboard players operation @a[tag=42.tag.portal.in_zone] 42.obj.portal.lvl = @s 42.obj.portal.var.b
scoreboard players operation @s 42.obj.portal.lvl = @s 42.obj.portal.var.b
function 42:portal/level/load
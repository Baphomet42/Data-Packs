execute if entity @s[tag=42.tag.portal.elevator.unload_prev] run function 42:portal/elevator/unload_prev
execute if entity @s[tag=42.tag.portal.elevator.hide_when_off] run function 42:portal/elevator/hide
execute if entity @s[tag=!42.tag.portal.elevator.show] if entity @a[gamemode=!spectator,distance=..3] run function 42:portal/elevator/show

execute unless entity @s[tag=42.tag.portal.elevator.show,tag=!42.tag.portal.elevator.search] run return fail

tag @a remove 42.tag.portal.temp.in_elevator
execute positioned ~-1.5 ~ ~-1.5 run tag @a[dx=2,dy=2,dz=2,gamemode=!spectator,tag=!42.tag.portal.motion] add 42.tag.portal.temp.in_elevator
execute if entity @s[tag=!42.tag.portal.elevator.exit_only] if entity @a[tag=42.tag.portal.temp.in_elevator] run function 42:portal/elevator/try_start
execute if predicate 42:periodic_20 if entity @s[tag=42.tag.portal.elevator.exit_only,scores={42.obj.portal.var.b=1..}] if entity @a[tag=42.tag.portal.temp.in_elevator] run function 42:portal/elevator/exit_load
tag @a remove 42.tag.portal.temp.in_elevator
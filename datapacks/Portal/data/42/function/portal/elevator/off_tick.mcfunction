execute if entity @s[tag=42.tag.portal.elevator.hide_when_off] run function 42:portal/elevator/hide

execute if entity @s[tag=!42.tag.portal.elevator.show] if entity @a[gamemode=!spectator,distance=..5] run function 42:portal/elevator/show
execute unless entity @s[tag=42.tag.portal.elevator.show,tag=!42.tag.portal.elevator.exit_only,tag=!42.tag.portal.elevator.search] run return fail

tag @a remove 42.tag.portal.temp.in_elevator
execute positioned ~-1.5 ~ ~-1.5 run tag @a[dx=2,dy=2,dz=2,gamemode=!spectator,tag=!42.tag.portal.motion] add 42.tag.portal.temp.in_elevator
execute if entity @a[tag=42.tag.portal.temp.in_elevator] run function 42:portal/elevator/try_start
tag @a remove 42.tag.portal.temp.in_elevator
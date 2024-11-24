execute if entity @s[tag=42.tag.portal.cube.tp] run return run function 42:portal/level/tick_score
execute if entity @s[tag=42.tag.portal.launch] run return run function 42:portal/level/tick_score
execute if entity @s[tag=42.tag.portal.btn] run return run function 42:portal/level/tick_score
execute if entity @s[tag=42.tag.portal.pedestal,scores={42.obj.portal.time=0..}] run return run function 42:portal/level/tick_score
execute if entity @s[tag=42.tag.portal.pellet,tag=!42.tag.portal.pellet.on] run return run function 42:portal/level/tick_score
execute if entity @s[tag=42.tag.portal.pellet.emitter] run return run function 42:portal/level/tick_score
execute if entity @s[tag=42.tag.portal.pellet.catcher,tag=!42.tag.portal.pellet.catcher.on,tag=!42.tag.portal.pellet.catcher.nolaser] run return run function 42:portal/level/tick_score

execute if entity @s[tag=42.tag.portal.portal] run return run function 42:portal/portal/tick
execute if entity @s[tag=42.tag.portal.gun_display] run return run function 42:portal/gun/display/tick
execute if entity @s[type=marker,tag=42.tag.portal.gun.projectile] run return run function 42:portal/gun/find_target
execute if entity @s[tag=42.tag.portal.elevator.start,tag=!42.tag.portal.elevator.on,tag=42.tag.portal.prox_tick] run return run function 42:portal/elevator/off_tick
execute if entity @s[tag=42.tag.portal.elevator,tag=42.tag.portal.elevator.on] run return run function 42:portal/elevator/on_tick
execute if entity @s[tag=42.tag.portal.zone,tag=!42.tag.portal.zone.cool,tag=42.tag.portal.prox_tick] if entity @a[limit=1,gamemode=!spectator,distance=..10] run return run function 42:portal/zone/tick
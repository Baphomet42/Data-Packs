execute if entity @s[tag=42.tag.portal.cube.main] run return run function 42:portal/level/tick_score
execute if entity @s[tag=42.tag.portal.faith_plate] run return run function 42:portal/level/tick_score
execute if entity @s[tag=42.tag.portal.btn] run return run function 42:portal/level/tick_score
execute if entity @s[tag=42.tag.portal.pedestal,scores={42.obj.portal.time=0..}] run return run function 42:portal/level/tick_score
execute if entity @s[tag=42.tag.portal.pellet,tag=!42.tag.portal.pellet.on] run return run function 42:portal/level/tick_score
execute if entity @s[tag=42.tag.portal.pellet.emitter] run return run function 42:portal/level/tick_score
execute if entity @s[tag=42.tag.portal.pellet.catcher,tag=!42.tag.portal.pellet.catcher.on,tag=!42.tag.portal.pellet.catcher.nolaser] run return run function 42:portal/level/tick_score
execute if entity @s[tag=42.tag.portal.laser.beam] run return run function 42:portal/level/tick_score
execute if entity @s[tag=42.tag.portal.laser.catcher] run return run function 42:portal/level/tick_score
execute if entity @s[tag=42.tag.portal.vent,tag=42.tag.portal.vent.mode.gel] run return run function 42:portal/level/tick_score
execute if entity @s[tag=42.tag.portal.gel.droplet] run return run function 42:portal/level/tick_score

execute if entity @s[tag=42.tag.portal.portal] run return run function 42:portal/portal/tick
execute if entity @s[tag=42.tag.portal.gun_display] run return run function 42:portal/gun/display/tick
execute if entity @s[type=marker,tag=42.tag.portal.gun.projectile] run return run function 42:portal/gun/find_target
execute if entity @s[tag=42.tag.portal.elevator.main,tag=!42.tag.portal.elevator.on,tag=42.tag.portal.prox_tick] run return run function 42:portal/elevator/off_tick
execute if entity @s[tag=42.tag.portal.elevator.main,tag=42.tag.portal.elevator.main] run return run function 42:portal/elevator/on_tick
execute if entity @s[tag=42.tag.portal.elevator.marker] run return run function 42:portal/elevator/move/set/tick
execute if entity @s[tag=42.tag.portal.zone,tag=!42.tag.portal.zone.cool,tag=42.tag.portal.prox_tick] if entity @a[limit=1,gamemode=!spectator,distance=..10] run return run function 42:portal/zone/tick
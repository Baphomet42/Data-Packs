execute if entity @s[tag=42.tag.portal.cube.main] run return run function 42:portal/cube/tick
execute if entity @s[tag=42.tag.portal.faith_plate] run return run function 42:portal/faith_plate/tick
execute if entity @s[tag=42.tag.portal.btn] run return run function 42:portal/button/tick
execute if entity @s[tag=42.tag.portal.pedestal] run return run function 42:portal/button/tick_pedestal
execute if entity @s[tag=42.tag.portal.pellet] run return run function 42:portal/pellet/pellet/tick
execute if entity @s[tag=42.tag.portal.pellet.emitter] run return run function 42:portal/pellet/emitter/tick
execute if entity @s[tag=42.tag.portal.pellet.catcher] run return run function 42:portal/pellet/catcher/tick
execute if entity @s[tag=42.tag.portal.laser.beam] run return run function 42:portal/laser/beam/tick
execute if entity @s[tag=42.tag.portal.laser.catcher] run return run function 42:portal/laser/catcher/tick
execute if entity @s[tag=42.tag.portal.vent,tag=42.tag.portal.vent.mode.gel] run return run function 42:portal/vent/tick_mode_gel
execute if entity @s[tag=42.tag.portal.gel.droplet] run return run function 42:portal/gel/droplet/tick
execute if entity @s[tag=42.tag.portal.portal] run return run function 42:portal/portal/tick
execute if entity @s[tag=42.tag.portal.gun_display] run return run function 42:portal/gun/display/tick
execute if entity @s[type=marker,tag=42.tag.portal.gun.projectile] run return run function 42:portal/gun/find_target
execute if entity @s[tag=42.tag.portal.elevator.main,tag=!42.tag.portal.elevator.on] run return run function 42:portal/elevator/off_tick
execute if entity @s[tag=42.tag.portal.elevator.main,tag=42.tag.portal.elevator.on] run return run function 42:portal/elevator/on_tick
execute if entity @s[tag=42.tag.portal.elevator.marker] run return run function 42:portal/elevator/move/set/tick
execute if entity @s[tag=42.tag.portal.portal.spawner] run return run function 42:portal/portal/spawner/tick
execute if entity @s[tag=42.tag.portal.cube.fizzle_effect] run return run function 42:portal/cube/fizzle_effect
execute if entity @s[tag=42.tag.portal.tool.marker] run return run function 42:portal/egg

execute if entity @s[tag=42.tag.portal.zone,tag=!42.tag.portal.zone.cool] if entity @a[limit=1,gamemode=!spectator,distance=..10] run return run function 42:portal/zone/tick
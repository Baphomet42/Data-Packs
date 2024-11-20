execute if entity @s[tag=42.portal_cube_tp] run return run function 42:portal/level/tick_score
execute if entity @s[tag=42.portal_launch] run return run function 42:portal/level/tick_score
execute if entity @s[tag=42.portal_btn] run return run function 42:portal/level/tick_score
execute if entity @s[tag=42.portal_pedestal,scores={42.portal_time=0..}] run return run function 42:portal/level/tick_score
execute if entity @s[tag=42.portal_pellet,tag=!42.portal_pellet_on] run return run function 42:portal/level/tick_score
execute if entity @s[tag=42.portal_pellet_emitter] run return run function 42:portal/level/tick_score
execute if entity @s[tag=42.portal_pellet_catcher,tag=!42.portal_pellet_catcher_on,tag=!42.portal_pellet_catcher_nolaser] run return run function 42:portal/level/tick_score

execute if entity @s[tag=42.portal] run return run function 42:portal/portal/tick
execute if entity @s[tag=42.portal_gun_display] run return run function 42:portal/gun/display/tick
execute if entity @s[type=marker,tag=42.portal_gun] run return run function 42:portal/gun/find_target
execute if entity @s[tag=42.portal_elevator_start,tag=!42.portal_elevator_on,tag=42.portal_prox_tick] run return run function 42:portal/elevator/off_tick
execute if entity @s[tag=42.portal_elevator,tag=42.portal_elevator_on] run return run function 42:portal/elevator/on_tick
execute if entity @s[tag=42.portal_zone,tag=!42.portal_zone_cool,tag=42.portal_prox_tick] if entity @a[gamemode=!spectator,distance=..10,limit=1] run return run function 42:portal/zone/tick
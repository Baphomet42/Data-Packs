tag @e remove 42.portal_tick
tag @e remove 42.portal_ticked
scoreboard players set 42.portal_max_turrets 42.portal_id 3
execute as @e[tag=42.portal_cube_tp,sort=random] run function 42:portal/level/tick_score
execute as @e[tag=42.portal_cube_hit,tag=!42.portal_ticked] run data remove entity @s interaction
execute as @e[tag=42.portal_cube_tp,tag=!42.portal_tick] run data merge entity @s {NoAI:1}
execute as @e[tag=42.portal_launch] run function 42:portal/level/tick_score
execute as @e[tag=42.portal_btn] run function 42:portal/level/tick_score
execute as @e[tag=42.portal_pedestal,scores={42.portal_time=0..}] run function 42:portal/level/tick_score
execute as @e[tag=42.portal] run function 42:portal/level/tick_score
execute as @e[tag=42.portal_pellet,tag=!42.portal_pellet_on] run function 42:portal/level/tick_score
execute as @e[tag=42.portal_pellet_emitter] run function 42:portal/level/tick_score
execute as @e[tag=42.portal_pellet_catcher,tag=!42.portal_pellet_catcher_on,tag=!42.portal_pellet_catcher_nolaser] run function 42:portal/level/tick_score
execute as @e[tag=42.portal_elevator] run function 42:portal/level/tick_score
tag @e remove 42.portal_ticked
execute as @e[tag=42.portal_radio,tag=42.portal_tick,limit=1] run function 42:portal/cube/radio/music
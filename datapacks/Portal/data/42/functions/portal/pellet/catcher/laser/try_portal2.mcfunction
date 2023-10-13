tag @e remove 42.portal_tp
execute if entity @e[tag=42.portal_pellet_catcher_laser,distance=..2.5] run function 42:portal/portal/tick_try_tp_pellet_laser
execute if entity @e[tag=42.portal_tp] run function 42:portal/portal/tick_tp
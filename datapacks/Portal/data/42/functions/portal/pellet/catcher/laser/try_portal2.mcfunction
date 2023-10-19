tag @e remove 42.portal_tp
execute at @s run function 42:portal/portal/tp/tick_try_tp_pellet_laser
execute at @s if entity @e[tag=42.portal_tp] run function 42:portal/portal/tp/tick_tp
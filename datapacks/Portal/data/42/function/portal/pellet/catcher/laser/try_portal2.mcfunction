tag @e remove 42.tag.portal.portal.tp
execute at @s run function 42:portal/portal/tp/tick_try_tp_pellet_laser
execute at @s if entity @e[tag=42.tag.portal.portal.tp] run function 42:portal/portal/tp/tick_tp
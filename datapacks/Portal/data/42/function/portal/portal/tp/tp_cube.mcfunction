function 42:portal/generic/motion/start
execute at @s run function 42:portal/portal/tp/tp_motion
execute if entity @s[tag=42.tag.portal.turret] at @s run function 42:portal/portal/tp/tp_turret
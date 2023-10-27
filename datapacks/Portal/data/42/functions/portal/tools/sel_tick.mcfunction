tag @s add 42.portal_sel
title @p[tag=42.portal_selected] actionbar [{"text":"Selected ","color":"aqua","bold":true},{"selector":"@s"}]
particle minecraft:glow_squid_ink ~ ~ ~ .5 1 .5 0 1
#execute if entity @s[tag=42.portal_cube_tp] at @s run function 42:portal/cube/sel_tick
#execute if entity @s[tag=42.portal_launch] at @s run function 42:portal/launch/sel_tick
#execute if entity @s[tag=42.portal_btn] at @s run function 42:portal/button/sel_tick
#execute if entity @s[tag=42.portal_pedestal] at @s run function 42:portal/button/sel_tick
#execute if entity @s[tag=42.portal_door] at @s run function 42:portal/door/sel_tick
#execute if entity @s[tag=42.portal_dropper] at @s run function 42:portal/dropper/sel_tick
#execute if entity @s[tag=42.portal] at @s run function 42:portal/portal/sel_tick
#execute if entity @s[tag=42.portal_pellet_catcher] at @s run function 42:portal/pellet/catcher/sel_tick
#execute if entity @s[tag=42.portal_pellet_emitter] at @s run function 42:portal/pellet/emitter/sel_tick
#execute if entity @s[tag=42.portal_pellet] at @s run function 42:portal/pellet/pellet/sel_tick
#execute if entity @s[tag=42.portal_elevator] at @s run function 42:portal/elevator/sel_tick
execute if entity @s[tag=42.portal_wire] at @s run function 42:portal/wire/sel_tick
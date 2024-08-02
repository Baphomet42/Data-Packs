function 42:portal/tag_id
tag @e remove 42.portal_temp
tag @s remove 42.portal_temp1
execute positioned ~-1.5 ~.5 ~-1.5 run tag @a[dx=2,dy=2,dz=2,gamemode=!spectator,tag=!42.portal_motion] add 42.portal_temp
tag @s add 42.portal_temp

execute if score @s 42.portal_time matches 1.. run scoreboard players remove @s 42.portal_time 1
execute if entity @s[tag=42.portal_elevator_wait_move] if score @s 42.portal_time matches 0 run function 42:portal/elevator/move/start
execute if entity @s[tag=42.portal_elevator_wait_door,tag=!42.portal_elevator_tp] if score @s 42.portal_time matches 200 run function 42:portal/elevator/doors/open
execute if entity @s[tag=42.portal_elevator_wait_door] if score @s 42.portal_time matches 0 run function 42:portal/elevator/stop
execute if entity @s[tag=42.portal_elevator_wait_door,tag=42.portal_elevator_tp] if score @s 42.portal_time matches 200 run function 42:portal/elevator/reset
execute if entity @s[tag=42.portal_elevator_on,tag=!42.portal_elevator_wait_move,tag=!42.portal_elevator_wait_door] run function 42:portal/elevator/move/tick

tag @e remove 42.portal_temp
tag @s remove 42.portal_temp1
tag @e remove 42.portal_id
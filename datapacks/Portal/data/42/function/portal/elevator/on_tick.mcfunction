function 42:portal/tag_id
tag @a remove 42.tag.portal.temp.in_elevator
execute at @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.car,limit=1] positioned ~-1.5 ~ ~-1.5 run tag @a[dx=2,dy=2,dz=2,gamemode=!spectator,tag=!42.tag.portal.motion] add 42.tag.portal.temp.in_elevator

execute if score @s 42.obj.portal.time matches 1.. run scoreboard players remove @s 42.obj.portal.time 1
execute if entity @s[tag=42.tag.portal.elevator.wait_move] if score @s 42.obj.portal.time matches 0 run function 42:portal/elevator/move/start
execute if entity @s[tag=42.tag.portal.elevator.wait_door,tag=!42.tag.portal.elevator.tp] if score @s 42.obj.portal.time matches 200 run function 42:portal/elevator/doors/open
execute if entity @s[tag=42.tag.portal.elevator.wait_door] if score @s 42.obj.portal.time matches 0 run function 42:portal/elevator/stop
execute if entity @s[tag=42.tag.portal.elevator.wait_door,tag=42.tag.portal.elevator.tp] if score @s 42.obj.portal.time matches 200 run function 42:portal/elevator/reset
execute if entity @s[tag=42.tag.portal.elevator.on,tag=!42.tag.portal.elevator.wait_move,tag=!42.tag.portal.elevator.wait_door] run function 42:portal/elevator/move/tick

tag @a remove 42.tag.portal.temp.in_elevator
tag @e remove 42.tag.portal.id
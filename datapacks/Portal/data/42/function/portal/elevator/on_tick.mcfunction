function 42:portal/tag_id
tag @e remove 42.tag.portal.temp
tag @s remove 42.tag.portal.temp1
execute positioned ~-1.5 ~.5 ~-1.5 run tag @a[dx=2,dy=2,dz=2,gamemode=!spectator,tag=!42.tag.portal.motion] add 42.tag.portal.temp
tag @s add 42.tag.portal.temp

execute if score @s 42.obj.portal.time matches 1.. run scoreboard players remove @s 42.obj.portal.time 1
execute if entity @s[tag=42.tag.portal.elevator.wait_move] if score @s 42.obj.portal.time matches 0 run function 42:portal/elevator/move/start
execute if entity @s[tag=42.tag.portal.elevator.wait_door,tag=!42.tag.portal.elevator.tp] if score @s 42.obj.portal.time matches 200 run function 42:portal/elevator/doors/open
execute if entity @s[tag=42.tag.portal.elevator.wait_door] if score @s 42.obj.portal.time matches 0 run function 42:portal/elevator/stop
execute if entity @s[tag=42.tag.portal.elevator.wait_door,tag=42.tag.portal.elevator.tp] if score @s 42.obj.portal.time matches 200 run function 42:portal/elevator/reset
execute if entity @s[tag=42.tag.portal.elevator.on,tag=!42.tag.portal.elevator.wait_move,tag=!42.tag.portal.elevator.wait_door] run function 42:portal/elevator/move/tick

tag @e remove 42.tag.portal.temp
tag @s remove 42.tag.portal.temp1
tag @e remove 42.tag.portal.id
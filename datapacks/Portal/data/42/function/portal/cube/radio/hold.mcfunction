scoreboard players set @s 42.portal_temp 0
execute positioned ^ ^ ^.5 positioned ~-.5 ~-.5 ~-.5 unless entity @e[tag=42.portal_cube_tp,tag=!42.portal_turret,tag=!42.portal_id,dx=0,dy=0,dz=0] run function 42:portal/cube/radio/hold_test
execute positioned ^ ^ ^.5 positioned ~ ~-.25 ~ run tp @e[tag=42.portal_cube_tp,tag=42.portal_id,limit=1] ~ ~ ~
scoreboard players remove @s 42.portal_temp 1
execute if score @s 42.portal_temp matches 0.. run data modify entity @e[tag=42.portal_cube_hit,tag=42.portal_id,limit=1] response set value 1b
execute if score @s 42.portal_temp matches ..-1 run data modify entity @e[tag=42.portal_cube_hit,tag=42.portal_id,limit=1] response set value 0b
execute if score @s 42.portal_temp matches 0.. positioned ^ ^ ^.75 positioned ~-.5 ~-.5 ~-.5 unless entity @e[tag=42.portal_cube_tp,tag=!42.portal_turret,tag=!42.portal_id,dx=0,dy=0,dz=0] run function 42:portal/cube/radio/hold_test
execute if score @s 42.portal_temp matches 1.. positioned ^ ^ ^.75 positioned ~ ~-.25 ~ run tp @e[tag=42.portal_cube_tp,tag=42.portal_id,limit=1] ~ ~ ~
scoreboard players remove @s 42.portal_temp 1
execute if score @s 42.portal_temp matches 0.. positioned ^ ^ ^1 positioned ~-.5 ~-.5 ~-.5 unless entity @e[tag=42.portal_cube_tp,tag=!42.portal_turret,tag=!42.portal_id,dx=0,dy=0,dz=0] run function 42:portal/cube/radio/hold_test
execute if score @s 42.portal_temp matches 1.. positioned ^ ^ ^1 positioned ~ ~-.25 ~ run tp @e[tag=42.portal_cube_tp,tag=42.portal_id,limit=1] ~ ~ ~
scoreboard players remove @s 42.portal_temp 1
execute if score @s 42.portal_temp matches 0.. positioned ^ ^ ^1.25 positioned ~-.5 ~-.5 ~-.5 unless entity @e[tag=42.portal_cube_tp,tag=!42.portal_turret,tag=!42.portal_id,dx=0,dy=0,dz=0] run function 42:portal/cube/radio/hold_test
execute if score @s 42.portal_temp matches 1.. positioned ^ ^ ^1.25 positioned ~ ~-.25 ~ run tp @e[tag=42.portal_cube_tp,tag=42.portal_id,limit=1] ~ ~ ~
scoreboard players remove @s 42.portal_temp 1
execute if score @s 42.portal_temp matches 0.. positioned ^ ^ ^1.5 positioned ~-.5 ~-.5 ~-.5 unless entity @e[tag=42.portal_cube_tp,tag=!42.portal_turret,tag=!42.portal_id,dx=0,dy=0,dz=0] run function 42:portal/cube/radio/hold_test
execute if score @s 42.portal_temp matches 1.. positioned ^ ^ ^1.5 positioned ~ ~-.25 ~ run tp @e[tag=42.portal_cube_tp,tag=42.portal_id,limit=1] ~ ~ ~
scoreboard players remove @s 42.portal_temp 1
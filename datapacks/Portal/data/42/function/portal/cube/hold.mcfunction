scoreboard players set @s 42.obj.portal.temp 0
execute positioned ^ ^ ^1.5 positioned ~-.5 ~-.5 ~-.5 unless entity @e[tag=42.tag.portal.cube.tp,tag=!42.tag.portal.turret,tag=!42.tag.portal.id,dx=0,dy=0,dz=0] run function 42:portal/cube/hold_test
execute positioned ^ ^ ^1.5 positioned ~ ~-.5 ~ run tp @e[tag=42.tag.portal.cube.tp,tag=42.tag.portal.id,limit=1] ~ ~ ~
scoreboard players remove @s 42.obj.portal.temp 1
execute if score @s 42.obj.portal.temp matches 0.. run data modify entity @e[tag=42.tag.portal.cube.hit,tag=42.tag.portal.id,limit=1] response set value 1b
execute if score @s 42.obj.portal.temp matches ..-1 run data modify entity @e[tag=42.tag.portal.cube.hit,tag=42.tag.portal.id,limit=1] response set value 0b
execute if score @s 42.obj.portal.temp matches 0.. positioned ^ ^ ^1.75 positioned ~-.5 ~-.5 ~-.5 unless entity @e[tag=42.tag.portal.cube.tp,tag=!42.tag.portal.turret,tag=!42.tag.portal.id,dx=0,dy=0,dz=0] run function 42:portal/cube/hold_test
execute if score @s 42.obj.portal.temp matches 1.. positioned ^ ^ ^1.75 positioned ~ ~-.5 ~ run tp @e[tag=42.tag.portal.cube.tp,tag=42.tag.portal.id,limit=1] ~ ~ ~
scoreboard players remove @s 42.obj.portal.temp 1
execute if score @s 42.obj.portal.temp matches 0.. positioned ^ ^ ^2 positioned ~-.5 ~-.5 ~-.5 unless entity @e[tag=42.tag.portal.cube.tp,tag=!42.tag.portal.turret,tag=!42.tag.portal.id,dx=0,dy=0,dz=0] run function 42:portal/cube/hold_test
execute if score @s 42.obj.portal.temp matches 1.. positioned ^ ^ ^2 positioned ~ ~-.5 ~ run tp @e[tag=42.tag.portal.cube.tp,tag=42.tag.portal.id,limit=1] ~ ~ ~
scoreboard players remove @s 42.obj.portal.temp 1
execute if score @s 42.obj.portal.temp matches 0.. positioned ^ ^ ^2.25 positioned ~-.5 ~-.5 ~-.5 unless entity @e[tag=42.tag.portal.cube.tp,tag=!42.tag.portal.turret,tag=!42.tag.portal.id,dx=0,dy=0,dz=0] run function 42:portal/cube/hold_test
execute if score @s 42.obj.portal.temp matches 1.. positioned ^ ^ ^2.25 positioned ~ ~-.5 ~ run tp @e[tag=42.tag.portal.cube.tp,tag=42.tag.portal.id,limit=1] ~ ~ ~
scoreboard players remove @s 42.obj.portal.temp 1
execute if score @s 42.obj.portal.temp matches 0.. positioned ^ ^ ^2.5 positioned ~-.5 ~-.5 ~-.5 unless entity @e[tag=42.tag.portal.cube.tp,tag=!42.tag.portal.turret,tag=!42.tag.portal.id,dx=0,dy=0,dz=0] run function 42:portal/cube/hold_test
execute if score @s 42.obj.portal.temp matches 1.. positioned ^ ^ ^2.5 positioned ~ ~-.5 ~ run tp @e[tag=42.tag.portal.cube.tp,tag=42.tag.portal.id,limit=1] ~ ~ ~
scoreboard players remove @s 42.obj.portal.temp 1
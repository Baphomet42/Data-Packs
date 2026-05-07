scoreboard players set @s 42.obj.portal.temp 0
execute positioned ^ ^ ^.5 positioned ~-.5 ~-.5 ~-.5 unless entity @e[tag=42.tag.portal.cube.main,tag=!42.tag.portal.turret,tag=!42.tag.portal.id,dx=0,dy=0,dz=0] run function 42:portal/cube/radio/hold_test
execute positioned ^ ^ ^.5 positioned ~ ~-.25 ~ run tp @e[tag=42.tag.portal.cube.main,tag=42.tag.portal.id,limit=1] ~ ~ ~
scoreboard players remove @s 42.obj.portal.temp 1
execute if score @s 42.obj.portal.temp matches 0.. run data modify entity @e[tag=42.tag.portal.cube.hit,tag=42.tag.portal.id,limit=1] response set value true
execute if score @s 42.obj.portal.temp matches ..-1 run data modify entity @e[tag=42.tag.portal.cube.hit,tag=42.tag.portal.id,limit=1] response set value false
execute if score @s 42.obj.portal.temp matches 0.. positioned ^ ^ ^.75 positioned ~-.5 ~-.5 ~-.5 unless entity @e[tag=42.tag.portal.cube.main,tag=!42.tag.portal.turret,tag=!42.tag.portal.id,dx=0,dy=0,dz=0] run function 42:portal/cube/radio/hold_test
execute if score @s 42.obj.portal.temp matches 1.. positioned ^ ^ ^.75 positioned ~ ~-.25 ~ run tp @e[tag=42.tag.portal.cube.main,tag=42.tag.portal.id,limit=1] ~ ~ ~
scoreboard players remove @s 42.obj.portal.temp 1
execute if score @s 42.obj.portal.temp matches 0.. positioned ^ ^ ^1 positioned ~-.5 ~-.5 ~-.5 unless entity @e[tag=42.tag.portal.cube.main,tag=!42.tag.portal.turret,tag=!42.tag.portal.id,dx=0,dy=0,dz=0] run function 42:portal/cube/radio/hold_test
execute if score @s 42.obj.portal.temp matches 1.. positioned ^ ^ ^1 positioned ~ ~-.25 ~ run tp @e[tag=42.tag.portal.cube.main,tag=42.tag.portal.id,limit=1] ~ ~ ~
scoreboard players remove @s 42.obj.portal.temp 1
execute if score @s 42.obj.portal.temp matches 0.. positioned ^ ^ ^1.25 positioned ~-.5 ~-.5 ~-.5 unless entity @e[tag=42.tag.portal.cube.main,tag=!42.tag.portal.turret,tag=!42.tag.portal.id,dx=0,dy=0,dz=0] run function 42:portal/cube/radio/hold_test
execute if score @s 42.obj.portal.temp matches 1.. positioned ^ ^ ^1.25 positioned ~ ~-.25 ~ run tp @e[tag=42.tag.portal.cube.main,tag=42.tag.portal.id,limit=1] ~ ~ ~
scoreboard players remove @s 42.obj.portal.temp 1
execute if score @s 42.obj.portal.temp matches 0.. positioned ^ ^ ^1.5 positioned ~-.5 ~-.5 ~-.5 unless entity @e[tag=42.tag.portal.cube.main,tag=!42.tag.portal.turret,tag=!42.tag.portal.id,dx=0,dy=0,dz=0] run function 42:portal/cube/radio/hold_test
execute if score @s 42.obj.portal.temp matches 1.. positioned ^ ^ ^1.5 positioned ~ ~-.25 ~ run tp @e[tag=42.tag.portal.cube.main,tag=42.tag.portal.id,limit=1] ~ ~ ~
scoreboard players remove @s 42.obj.portal.temp 1
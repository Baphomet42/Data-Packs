scoreboard players set @s 42.portal_temp 0
execute positioned ^ ^ ^1.5 positioned ~ ~-.5 ~ if block ~-.5 ~ ~-.5 #42:portal_cube_pass if block ~-.5 ~ ~.5 #42:portal_cube_pass if block ~-.5 ~1 ~-.5 #42:portal_cube_pass if block ~-.5 ~1 ~.5 #42:portal_cube_pass if block ~.5 ~ ~-.5 #42:portal_cube_pass if block ~.5 ~ ~.5 #42:portal_cube_pass if block ~.5 ~1 ~-.5 #42:portal_cube_pass if block ~.5 ~1 ~.5 #42:portal_cube_pass positioned ~-.5 ~-.1 ~-.5 unless entity @e[tag=42.portal_cube_tp,tag=!42.portal_turret,tag=!42.portal_id,dx=0,dy=0,dz=0] run scoreboard players add @s 42.portal_temp 1
execute positioned ^ ^ ^1.5 positioned ~ ~-.5 ~ run tp @e[tag=42.portal_cube_tp,tag=42.portal_id,limit=1,sort=nearest] ~ ~ ~
scoreboard players remove @s 42.portal_temp 1
execute if score @s 42.portal_temp matches 0.. run data modify entity @e[tag=42.portal_cube_hit,tag=42.portal_id,limit=1,sort=nearest] response set value 1
execute if score @s 42.portal_temp matches ..-1 run data modify entity @e[tag=42.portal_cube_hit,tag=42.portal_id,limit=1,sort=nearest] response set value 0
execute if score @s 42.portal_temp matches 0.. positioned ^ ^ ^1.75 positioned ~ ~-.5 ~ if block ~-.5 ~ ~-.5 #42:portal_cube_pass if block ~-.5 ~ ~.5 #42:portal_cube_pass if block ~-.5 ~1 ~-.5 #42:portal_cube_pass if block ~-.5 ~1 ~.5 #42:portal_cube_pass if block ~.5 ~ ~-.5 #42:portal_cube_pass if block ~.5 ~ ~.5 #42:portal_cube_pass if block ~.5 ~1 ~-.5 #42:portal_cube_pass if block ~.5 ~1 ~.5 #42:portal_cube_pass positioned ~-.5 ~-.1 ~-.5 unless entity @e[tag=42.portal_cube_tp,tag=!42.portal_turret,tag=!42.portal_id,dx=0,dy=0,dz=0] run scoreboard players add @s 42.portal_temp 1
execute if score @s 42.portal_temp matches 1.. positioned ^ ^ ^1.75 positioned ~ ~-.5 ~ run tp @e[tag=42.portal_cube_tp,tag=42.portal_id,limit=1,sort=nearest] ~ ~ ~
scoreboard players remove @s 42.portal_temp 1
execute if score @s 42.portal_temp matches 0.. positioned ^ ^ ^2 positioned ~ ~-.5 ~ if block ~-.5 ~ ~-.5 #42:portal_cube_pass if block ~-.5 ~ ~.5 #42:portal_cube_pass if block ~-.5 ~1 ~-.5 #42:portal_cube_pass if block ~-.5 ~1 ~.5 #42:portal_cube_pass if block ~.5 ~ ~-.5 #42:portal_cube_pass if block ~.5 ~ ~.5 #42:portal_cube_pass if block ~.5 ~1 ~-.5 #42:portal_cube_pass if block ~.5 ~1 ~.5 #42:portal_cube_pass positioned ~-.5 ~-.1 ~-.5 unless entity @e[tag=42.portal_cube_tp,tag=!42.portal_turret,tag=!42.portal_id,dx=0,dy=0,dz=0] run scoreboard players add @s 42.portal_temp 1
execute if score @s 42.portal_temp matches 1.. positioned ^ ^ ^2 positioned ~ ~-.5 ~ run tp @e[tag=42.portal_cube_tp,tag=42.portal_id,limit=1,sort=nearest] ~ ~ ~
scoreboard players remove @s 42.portal_temp 1
execute if score @s 42.portal_temp matches 0.. positioned ^ ^ ^2.25 positioned ~ ~-.5 ~ if block ~-.5 ~ ~-.5 #42:portal_cube_pass if block ~-.5 ~ ~.5 #42:portal_cube_pass if block ~-.5 ~1 ~-.5 #42:portal_cube_pass if block ~-.5 ~1 ~.5 #42:portal_cube_pass if block ~.5 ~ ~-.5 #42:portal_cube_pass if block ~.5 ~ ~.5 #42:portal_cube_pass if block ~.5 ~1 ~-.5 #42:portal_cube_pass if block ~.5 ~1 ~.5 #42:portal_cube_pass positioned ~-.5 ~-.1 ~-.5 unless entity @e[tag=42.portal_cube_tp,tag=!42.portal_turret,tag=!42.portal_id,dx=0,dy=0,dz=0] run scoreboard players add @s 42.portal_temp 1
execute if score @s 42.portal_temp matches 1.. positioned ^ ^ ^2.25 positioned ~ ~-.5 ~ run tp @e[tag=42.portal_cube_tp,tag=42.portal_id,limit=1,sort=nearest] ~ ~ ~
scoreboard players remove @s 42.portal_temp 1
execute if score @s 42.portal_temp matches 0.. positioned ^ ^ ^2.5 positioned ~ ~-.5 ~ if block ~-.5 ~ ~-.5 #42:portal_cube_pass if block ~-.5 ~ ~.5 #42:portal_cube_pass if block ~-.5 ~1 ~-.5 #42:portal_cube_pass if block ~-.5 ~1 ~.5 #42:portal_cube_pass if block ~.5 ~ ~-.5 #42:portal_cube_pass if block ~.5 ~ ~.5 #42:portal_cube_pass if block ~.5 ~1 ~-.5 #42:portal_cube_pass if block ~.5 ~1 ~.5 #42:portal_cube_pass positioned ~-.5 ~-.1 ~-.5 unless entity @e[tag=42.portal_cube_tp,tag=!42.portal_turret,tag=!42.portal_id,dx=0,dy=0,dz=0] run scoreboard players add @s 42.portal_temp 1
execute if score @s 42.portal_temp matches 1.. positioned ^ ^ ^2.5 positioned ~ ~-.5 ~ run tp @e[tag=42.portal_cube_tp,tag=42.portal_id,limit=1,sort=nearest] ~ ~ ~
scoreboard players remove @s 42.portal_temp 1
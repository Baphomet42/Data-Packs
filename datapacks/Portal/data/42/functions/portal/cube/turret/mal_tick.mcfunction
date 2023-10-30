scoreboard players add @s 42.portal_u 1
execute if score @s 42.portal_u matches 15.. run scoreboard players set @s 42.portal_u 0
execute if score @s[tag=!42.portal_turret_oracle] 42.portal_u matches 2 if score @s 42.portal_w matches 41.. if score 42.portal_max_turret_lasers 42.portal_id matches 1.. run function 42:portal/cube/turret/target/new_laser_mal
execute if score @s[tag=42.portal_turret_oracle] 42.portal_u matches 2 if score @s 42.portal_w matches 1 if score 42.portal_max_turret_lasers 42.portal_id matches 1.. run function 42:portal/cube/turret/target/new_laser_oracle
#
execute if score @s 42.portal_w matches 88 at @s positioned ^ ^1 ^1 run damage @p[distance=..2,gamemode=!creative,gamemode=!spectator] .00001 generic_kill by @e[tag=42.portal_id,tag=42.portal_cube_tp,limit=1]
execute if score @s 42.portal_w matches 78 at @s positioned ^ ^1 ^1 run damage @p[distance=..2,gamemode=!creative,gamemode=!spectator] .00001 generic_kill by @e[tag=42.portal_id,tag=42.portal_cube_tp,limit=1]
execute if score @s 42.portal_w matches 68 at @s positioned ^ ^1 ^1 run damage @p[distance=..2,gamemode=!creative,gamemode=!spectator] .00001 generic_kill by @e[tag=42.portal_id,tag=42.portal_cube_tp,limit=1]
execute if score @s 42.portal_w matches 58 at @s positioned ^ ^1 ^1 run damage @p[distance=..2,gamemode=!creative,gamemode=!spectator] .00001 generic_kill by @e[tag=42.portal_id,tag=42.portal_cube_tp,limit=1]
execute if score @s 42.portal_w matches 48 at @s positioned ^ ^1 ^1 run damage @p[distance=..2,gamemode=!creative,gamemode=!spectator] .00001 generic_kill by @e[tag=42.portal_id,tag=42.portal_cube_tp,limit=1]
execute if score @s 42.portal_w matches 88.. run particle flash
execute if score @s 42.portal_w matches 68..70 run particle flash
execute if score @s 42.portal_w matches 77 run particle flash
execute if score @s 42.portal_w matches 56..60 run particle flash
execute if score @s 42.portal_w matches 41..43 run particle flash
execute if score @s 42.portal_w matches 80..85 as @e[tag=42.portal_id,tag=42.portal_cube_dis] at @s run tp @s ~ ~ ~ ~8 ~
execute if score @s 42.portal_w matches 60..75 as @e[tag=42.portal_id,tag=42.portal_cube_dis] at @s run tp @s ~ ~ ~ ~-5 ~
execute if score @s 42.portal_w matches 50..55 as @e[tag=42.portal_id,tag=42.portal_cube_dis] at @s run tp @s ~ ~ ~ ~9 ~
execute if score @s 42.portal_w matches 41..45 as @e[tag=42.portal_id,tag=42.portal_cube_dis] at @s run tp @s ~ ~ ~ ~-6 ~
execute if score @s 42.portal_w matches 41.. as @e[tag=42.portal_id,tag=42.portal_turret_eye] at @s run function 42:portal/cube/turret/target/shoot
#
execute if score @s 42.portal_w matches 10..20 run function 42:portal/cube/turret/deactivate
execute if score @s 42.portal_w matches 10.. run scoreboard players remove @s 42.portal_w 1
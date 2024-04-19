tag @e remove 42.portal_new_spawn
summon area_effect_cloud ~ ~ ~ {Duration:15,DurationOnUse:0,Particle:{type:block,block_state:{Name:air}},Radius:.1d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:0,Tags:["42.portal_turret_fire","42.portal_new_spawn"]}
scoreboard players set @e[type=!player,tag=42.portal_new_spawn] 42.datapack 3
scoreboard players operation @e[tag=42.portal_new_spawn] 42.portal_id = @s 42.portal_id
execute if entity @a[tag=42.portal_turret_target_current,gamemode=creative] run tag @e[tag=42.portal_new_spawn] add 42.portal_turret_fire_noshoot
execute as @e[tag=42.portal_turret_target_current,limit=1,sort=nearest] at @s unless entity @s[gamemode=creative] run function 42:portal/cube/turret/target/hit
tag @e remove 42.portal_new_spawn
execute if score @s 42.portal_v matches ..50 run scoreboard players set @s 42.portal_v 50
execute if entity @s[tag=!42.portal_turret_open] run function 42:portal/cube/turret/arms/open
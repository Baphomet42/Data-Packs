function 42:portal/tag_id

tag @e remove 42.portal_new_spawn
execute at @e[tag=42.portal_id,tag=42.portal_elevator,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["42.portal_new_spawn"],Duration:10,DurationOnUse:0,Particle:{type:flash},Radius:.25d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:0}
scoreboard players set @e[type=!player,tag=42.portal_new_spawn] 42.datapack 3
tag @e remove 42.portal_new_spawn

scoreboard players operation @e[tag=42.portal_id,tag=42.portal_elevator,limit=1] 42.portal_sel = @s 42.portal_sel
execute as @e[tag=42.portal_id,tag=42.portal_elevator,limit=1] at @s run function 42:portal/tools/sel_new

tag @e remove 42.portal_id
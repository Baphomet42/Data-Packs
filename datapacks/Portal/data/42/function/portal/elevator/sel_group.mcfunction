function 42:portal/tag_id

tag @e remove 42.tag.portal.new_spawn
execute at @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["42.tag.portal.new_spawn"],Duration:10,DurationOnUse:0,Particle:{type:flash},Radius:.25d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:0}
scoreboard players set @e[type=!player,tag=42.tag.portal.new_spawn] 42.obj.datapack 3
tag @e remove 42.tag.portal.new_spawn

scoreboard players operation @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator,limit=1] 42.obj.portal.sel = @s 42.obj.portal.sel
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator,limit=1] at @s run function 42:portal/tools/sel_new

tag @e remove 42.tag.portal.id
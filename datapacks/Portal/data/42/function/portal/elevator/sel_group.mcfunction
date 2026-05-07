function 42:portal/tag_id

execute at @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.selgroup,limit=1] run summon area_effect_cloud ~ ~ ~ {Tags:["42.tag.summon"],Duration:10,DurationOnUse:0,custom_particle:{type:"minecraft:flash",color:[1,1,1,1]},Radius:.25d,RadiusOnUse:0,RadiusPerTick:0,WaitTime:0}

scoreboard players operation @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.main,limit=1] 42.obj.portal.sel = @s 42.obj.portal.sel
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.main,limit=1] at @s run function 42:portal/tools/sel_new

tag @e remove 42.tag.portal.id
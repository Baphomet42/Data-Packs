tag @e remove 42.tag.portal.temp

execute as @p[tag=42.tag.portal.selected] at @s run tag @e[type=!player,tag=!42.tag.portal.zone,tag=!42.tag.portal.elevator.main,tag=42.tag.portal.is_spawner,limit=1,sort=nearest,distance=..10] add 42.tag.portal.temp
scoreboard players operation @s 42.obj.portal.yrot1 = @e[tag=42.tag.portal.temp,limit=1] 42.obj.portal.id
execute if entity @e[tag=42.tag.portal.temp] run tag @s add 42.tag.portal.zone.has_spawn
execute as @e[tag=42.tag.portal.temp] at @s run particle flash{color:[1,1,1,1]} ~ ~ ~
execute as @e[tag=42.tag.portal.temp] at @s run playsound block.note_block.pling block @a ~ ~ ~ 1 1.25
execute unless entity @e[tag=42.tag.portal.temp] run title @p[tag=42.tag.portal.selected] title ""
execute unless entity @e[tag=42.tag.portal.temp] run title @p[tag=42.tag.portal.selected] subtitle {text:"No spawner in range",color:"red"}

tag @e remove 42.tag.portal.temp
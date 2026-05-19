tag @e remove 42.tag.portal.temp_pair
execute as @p[tag=42.tag.portal.selected] at @s run tag @e[tag=42.tag.portal.portal.spawner,limit=1,sort=nearest,distance=..4] add 42.tag.portal.temp_pair
tag @s remove 42.tag.portal.temp_pair

execute if entity @e[tag=42.tag.portal.temp_pair] run scoreboard players operation @s 42.obj.portal.var.u = @e[tag=42.tag.portal.temp_pair,limit=1] 42.obj.portal.id

execute unless entity @e[tag=42.tag.portal.temp_pair] run title @p[tag=42.tag.portal.selected] title ""
execute unless entity @e[tag=42.tag.portal.temp_pair] run return run title @p[tag=42.tag.portal.selected] subtitle {text:"No Portal Spawner in range",color:"red"}

execute as @e[tag=42.tag.portal.temp_pair] at @s run particle flash{color:[1,1,1,1]} ^ ^1 ^1
execute as @e[tag=42.tag.portal.temp_pair] at @s run playsound block.note_block.pling block @a ~ ~ ~ 1 1.25
tag @e remove 42.tag.portal.temp_pair
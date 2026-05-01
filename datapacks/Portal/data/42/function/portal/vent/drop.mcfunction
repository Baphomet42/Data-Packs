execute if entity @s[tag=42.tag.portal.vent.mode.gel] run return run function 42:portal/vent/drop_gel

function 42:portal/tag_id
tag @s add 42.tag.portal.vent.fizzle
execute as @e[tag=42.tag.portal.cube.tp,tag=42.tag.portal.id] at @s run function 42:portal/cube/fizzle
tag @s remove 42.tag.portal.vent.fizzle
tag @e remove 42.tag.portal.id

tag @e remove 42.tag.portal.vent.drop
tag @s add 42.tag.portal.vent.drop
function 42:portal/cube/spawn
scoreboard players operation @e[tag=!42.tag.portal.vent,tag=42.tag.portal.vent.drop,distance=..10] 42.obj.portal.id = @s 42.obj.portal.id
scoreboard players operation @e[tag=!42.tag.portal.vent,tag=42.tag.portal.vent.drop,tag=42.tag.portal.cube.tp,distance=..10] 42.obj.portal.lvl = @s 42.obj.portal.lvl
tag @e remove 42.tag.portal.vent.drop
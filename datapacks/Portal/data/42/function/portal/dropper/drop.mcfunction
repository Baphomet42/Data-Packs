function 42:portal/tag_id
tag @s add 42.tag.portal.dropper.fizzle
execute as @e[tag=42.tag.portal.cube.tp,tag=42.tag.portal.id] at @s run function 42:portal/cube/fizzle
tag @s remove 42.tag.portal.dropper.fizzle
tag @e remove 42.tag.portal.id

tag @e remove 42.tag.portal.dropper.drop
tag @s add 42.tag.portal.dropper.drop
function 42:portal/cube/spawn
scoreboard players operation @e[tag=!42.tag.portal.dropper,tag=42.tag.portal.dropper.drop,distance=..10] 42.obj.portal.id = @s 42.obj.portal.id
scoreboard players operation @e[tag=!42.tag.portal.dropper,tag=42.tag.portal.dropper.drop,tag=42.tag.portal.cube.tp,distance=..10] 42.obj.portal.lvl = @s 42.obj.portal.lvl
tag @e remove 42.tag.portal.dropper.drop
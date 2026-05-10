playsound minecraft:block.fire.extinguish block @a ~ ~.5 ~ 1.5 1
playsound minecraft:block.beacon.deactivate block @a ~ ~.5 ~ 4 1
particle minecraft:large_smoke ~ ~.5 ~ .4 .4 .4 0 20
function 42:portal/tag_id
scoreboard players set @a[tag=42.tag.portal.id] 42.obj.portal.id 0
tp @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.collision] ~ -512 ~
kill @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.group,tag=!42.tag.portal.cube.dis]
tag @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis] add 42.tag.portal.fizzle
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.vent.on,tag=!42.tag.portal.vent.fizzle] at @s run function 42:portal/vent/drop
tag @e remove 42.tag.portal.id
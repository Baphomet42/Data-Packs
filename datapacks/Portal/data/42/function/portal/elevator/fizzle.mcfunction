function 42:portal/tag_id
function 42:portal/elevator/move/set_none
function 42:portal/tag_id
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.main] at @s run fill ~-2 ~ ~-2 ~2 ~2 ~2 air replace barrier
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.main] at @s run fill ~-2 ~3 ~-2 ~2 ~3 ~2 air replace smooth_quartz_stairs

kill @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.group]
tag @e remove 42.tag.portal.id
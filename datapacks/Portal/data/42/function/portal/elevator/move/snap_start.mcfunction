execute at @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.end] run fill ~-1 ~ ~-1 ~1 ~ ~1 air replace smooth_quartz_slab
execute at @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.start] run fill ~-1 ~ ~-1 ~1 ~ ~1 smooth_quartz_slab replace #42:portal/portal_replace
execute at @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.start] run tp @s ~ ~.5 ~
tag @s add 42.tag.portal.elevator.at_start
tag @s remove 42.tag.portal.elevator.at_end
function 42:portal/elevator/walls/reset
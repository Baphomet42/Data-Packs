execute at @e[tag=42.portal_id,tag=42.portal_elevator_start] run fill ~-1 ~ ~-1 ~1 ~ ~1 air replace smooth_quartz_slab
execute at @e[tag=42.portal_id,tag=42.portal_elevator_end] run fill ~-1 ~ ~-1 ~1 ~ ~1 smooth_quartz_slab replace #42:portal_replace
execute at @e[tag=42.portal_id,tag=42.portal_elevator_end] run tp @s ~ ~.5 ~
tag @s remove 42.portal_elevator_at_start
tag @s add 42.portal_elevator_at_end
function 42:portal/elevator/walls/reset
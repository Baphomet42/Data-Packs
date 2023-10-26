execute as @e[tag=42.portal_elevator_door_l,tag=42.portal_id] run data merge entity @s {transformation:{translation:[-1.375f,-1.225f,1.375f],scale:[1.375f,2.35f,.125f]},interpolation_duration:0,start_interpolation:-1}
execute as @e[tag=42.portal_elevator_door_r,tag=42.portal_id] run data merge entity @s {transformation:{translation:[0f,-1.225f,1.375f],scale:[1.375f,2.35f,.125f]},interpolation_duration:0,start_interpolation:-1}
execute as @e[tag=42.portal_elevator_start,tag=42.portal_id] at @s run fill ^-1 ^1 ^2 ^1 ^1 ^2 barrier replace #42:portal_replace
tag @s add 42.portal_elevator_shut
function 42:portal/elevator/walls/reset
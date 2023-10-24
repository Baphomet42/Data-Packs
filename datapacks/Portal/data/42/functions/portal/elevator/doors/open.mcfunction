execute as @e[tag=42.portal_elevator_door_l,tag=42.portal_id] run data merge entity @s {transformation:{translation:[-1.375f,-1.225f,1.375f],scale:[.5f,2.35f,.125f]},interpolation_duration:15,start_interpolation:-1}
execute as @e[tag=42.portal_elevator_door_r,tag=42.portal_id] run data merge entity @s {transformation:{translation:[.875f,-1.225f,1.375f],scale:[.5f,2.35f,.125f]},interpolation_duration:15,start_interpolation:-1}
execute as @e[tag=42.portal_elevator_start,tag=42.portal_id] at @s run fill ^-1 ^1 ^2 ^1 ^1 ^2 air replace barrier
execute at @s run playsound minecraft:entity.player.breath block @a ~ ~ ~ 1 1.75
tag @s remove 42.portal_elevator_shut
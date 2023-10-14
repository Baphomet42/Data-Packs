playsound minecraft:entity.player.breath hostile @a ~ ~ ~ 1.5 2
tag @s add 42.portal_turret_open
execute as @e[tag=42.portal_id,tag=42.portal_turret_arm_l] run data merge entity @s {transformation:{translation:[.4375f,.625f,-.125f]},interpolation_duration:3,start_interpolation:-1}
execute as @e[tag=42.portal_id,tag=42.portal_turret_arm_r] run data merge entity @s {transformation:{translation:[-.5f,.625f,-.125f]},interpolation_duration:3,start_interpolation:-1}
execute as @e[tag=42.portal_id,tag=42.portal_turret_arm_l2] run data merge entity @s {transformation:{translation:[.375f,.875f,-.09375f]},interpolation_duration:3,start_interpolation:-1}
execute as @e[tag=42.portal_id,tag=42.portal_turret_arm_r2] run data merge entity @s {transformation:{translation:[-.4375f,.875f,-.09375f]},interpolation_duration:3,start_interpolation:-1}
execute as @e[tag=42.portal_id,tag=42.portal_turret_arm_m] run data merge entity @s {transformation:{translation:[-.4375f,1f,-.0625f],scale:[.875f,.0625f,.0625f]},interpolation_duration:3,start_interpolation:-1}
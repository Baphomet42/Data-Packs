playsound minecraft:entity.player.breath hostile @a ~ ~ ~ 1.5 1.8
tag @s remove 42.portal_turret_open
execute as @e[tag=42.portal_id,tag=42.portal_turret_arm_l] run data merge entity @s {transformation:{translation:[.1875f,.625f,-.125f]},interpolation_duration:6,start_interpolation:-1}
execute as @e[tag=42.portal_id,tag=42.portal_turret_arm_r] run data merge entity @s {transformation:{translation:[-.25f,.625f,-.125f]},interpolation_duration:6,start_interpolation:-1}
execute as @e[tag=42.portal_id,tag=42.portal_turret_arm_l2] run data merge entity @s {transformation:{translation:[.125f,.875f,-.09375f]},interpolation_duration:6,start_interpolation:-1}
execute as @e[tag=42.portal_id,tag=42.portal_turret_arm_r2] run data merge entity @s {transformation:{translation:[-.1875f,.875f,-.09375f]},interpolation_duration:6,start_interpolation:-1}
execute as @e[tag=42.portal_id,tag=42.portal_turret_arm_m] run data merge entity @s {transformation:{translation:[-.1875f,1f,-.0625f],scale:[.375f,.0625f,.0625f]},interpolation_duration:6,start_interpolation:-1}
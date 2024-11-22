# tp
execute if entity @s[tag=42.portal_cube_size1] as @a[tag=42.portal_id,limit=1,x_rotation=-90..26] at @s anchored eyes run function 42:portal/cube/hold
execute if entity @s[tag=42.portal_cube_size2] as @a[tag=42.portal_id,limit=1,x_rotation=-90..26] at @s anchored eyes run function 42:portal/cube/radio/hold
# tp looking down
execute if entity @s[tag=42.portal_cube_size1] as @a[tag=42.portal_id,limit=1,x_rotation=26..90] at @s anchored eyes rotated ~ 26 run function 42:portal/cube/hold
execute if entity @s[tag=42.portal_cube_size2] as @a[tag=42.portal_id,limit=1,x_rotation=26..90] at @s anchored eyes rotated ~ 26 run function 42:portal/cube/radio/hold
# flip rotation
execute if entity @s[tag=42.portal_radio] as @e[tag=42.portal_id,tag=42.portal_cube_dis] at @s rotated as @a[tag=42.portal_id,limit=1] run rotate @s ~180 0
execute if entity @s[tag=42.portal_laser_cube] as @e[tag=42.portal_id,tag=42.portal_cube_dis] at @s rotated as @a[tag=42.portal_id,limit=1] run rotate @s ~ 0
# tilt turret
execute if entity @s[tag=42.portal_turret] run function 42:portal/cube/turret/tick_hold
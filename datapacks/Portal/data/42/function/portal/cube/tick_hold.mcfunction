# tp
execute if entity @s[tag=42.tag.portal.cube.size_1] as @a[tag=42.tag.portal.id,limit=1,x_rotation=-90..26] at @s anchored eyes run function 42:portal/cube/hold
execute if entity @s[tag=42.tag.portal.cube.size_2] as @a[tag=42.tag.portal.id,limit=1,x_rotation=-90..26] at @s anchored eyes run function 42:portal/cube/radio/hold
# tp looking down
execute if entity @s[tag=42.tag.portal.cube.size_1] as @a[tag=42.tag.portal.id,limit=1,x_rotation=26..90] at @s anchored eyes rotated ~ 26 run function 42:portal/cube/hold
execute if entity @s[tag=42.tag.portal.cube.size_2] as @a[tag=42.tag.portal.id,limit=1,x_rotation=26..90] at @s anchored eyes rotated ~ 26 run function 42:portal/cube/radio/hold
# flip rotation
execute if entity @s[tag=42.tag.portal.radio] as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis] at @s rotated as @a[tag=42.tag.portal.id,limit=1] run rotate @s ~180 0
execute if entity @s[tag=42.tag.portal.cube.laser] as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis] at @s rotated as @a[tag=42.tag.portal.id,limit=1] run rotate @s ~ 0
# tilt turret
execute if entity @s[tag=42.tag.portal.turret] run function 42:portal/cube/turret/tick_hold
data merge entity @s {Saddle:0b,InLove:0}
data modify entity @s[nbt={OnGround:1b}] Motion[0] set value 0d
data modify entity @s[nbt={OnGround:1b}] Motion[2] set value 0d
execute as @e[tag=42.portal_cube_hit,tag=42.portal_id,tag=42.portal_cube_held] unless entity @a[tag=42.portal_id] run tag @s remove 42.portal_cube_held
execute as @e[tag=42.portal_cube_hit,tag=42.portal_id,tag=!42.portal_cube_held] run data modify entity @s response set value 1b
scoreboard players set @s 42.portal_temp 0
execute if entity @e[tag=42.portal_cube_hit,tag=42.portal_id,tag=42.portal_cube_held] as @a[tag=42.portal_id] run scoreboard players add @e[tag=42.portal_cube_tp,tag=42.portal_id] 42.portal_temp 1
execute if score @s 42.portal_temp matches 2.. run scoreboard players set @a[tag=42.portal_id] 42.portal_id 0

scoreboard players set 42.portal 42.portal_temp 0
execute at @s positioned ~ ~ ~ run function 42:portal/generic/in_world
execute if score 42.portal 42.portal_temp matches 0 run function 42:portal/cube/fizzle
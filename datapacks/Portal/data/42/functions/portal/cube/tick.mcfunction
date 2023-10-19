function 42:portal/tag_id
execute as @e[tag=42.portal_cube,tag=42.portal_id,limit=1,sort=nearest] run tp ~ ~ ~
data modify entity @s[nbt={OnGround:1b}] Motion[0] set value 0d
data modify entity @s[nbt={OnGround:1b}] Motion[2] set value 0d
data modify entity @s NoAI set value 0b
execute as @e[tag=42.portal_cube_hit,tag=42.portal_id,limit=1,sort=nearest] at @s if entity @s[nbt={interaction:{}}] run function 42:portal/cube/interact
tag @e[tag=42.portal_cube_hit,tag=42.portal_id,limit=1,sort=nearest] add 42.portal_ticked
#tp
execute as @e[tag=42.portal_cube_hit,tag=42.portal_id,tag=42.portal_cube_held] as @p[tag=42.portal_id] at @s anchored eyes run function 42:portal/cube/hold
#tp looking down
execute as @e[tag=42.portal_cube_hit,tag=42.portal_id,tag=42.portal_cube_held] as @p[tag=42.portal_id,x_rotation=26..90] at @s rotated ~ 26 anchored eyes run function 42:portal/cube/hold
#special
function 42:portal/tag_id
execute if entity @s[tag=42.portal_turret] at @s run function 42:portal/cube/turret/tick
execute if entity @s[tag=42.portal_laser_cube] at @s run function 42:portal/cube/laser/tick
execute if entity @s[tag=42.portal_radio] at @s run function 42:portal/cube/radio/tick
function 42:portal/tag_id
#
execute if block ~ ~.5 ~ water run function 42:portal/cube/fizzle
execute if block ~ ~.5 ~ lava run function 42:portal/cube/fizzle
execute as @e[tag=42.portal_turret_hit,tag=!42.portal_cube_held,tag=!42.portal_id,distance=...5] at @s run function 42:portal/cube/turret/fall
#
tag @e remove 42.portal_id
execute if entity @s[nbt={OnGround:0b},tag=!42.portal_motion_tp] store result score @s 42.portal_y run data get entity @s Motion[1] 1000
#
execute if score @s 42.portal_time matches 20 run function 42:portal/cube/tick20
scoreboard players add @s 42.portal_time 1
execute if score @s 42.portal_time matches 21 run scoreboard players set @s 42.portal_time 0
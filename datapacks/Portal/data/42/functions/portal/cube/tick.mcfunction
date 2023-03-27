function 42:portal/tag_id
execute as @e[tag=42.portal_cube,tag=42.portal_id,limit=1,sort=nearest] positioned ~ ~-.005 ~ run tp ~ ~ ~
data modify entity @s[nbt={OnGround:1b}] Motion[0] set value 0d
data modify entity @s[nbt={OnGround:1b}] Motion[2] set value 0d
execute as @e[tag=42.portal_cube_hit,tag=42.portal_id,limit=1,sort=nearest] at @s if entity @s[nbt={interaction:{}}] run function 42:portal/cube/interact
#tp
execute as @e[tag=42.portal_cube_hit,tag=42.portal_id,tag=42.portal_cube_held] as @p[tag=42.portal_id] at @s anchored eyes run function 42:portal/cube/hold
#tp looking down
execute as @e[tag=42.portal_cube_hit,tag=42.portal_id,tag=42.portal_cube_held] as @p[tag=42.portal_id,x_rotation=26..90] at @s rotated ~ 26 anchored eyes run function 42:portal/cube/hold
#
execute if entity @s[tag=42.portal_fizzle] run function 42:portal/cube/fizzle
#
tag @e remove 42.portal_id
#
execute if score @s 42.portal_time matches 20 run function 42:portal/cube/tick20
scoreboard players add @s 42.portal_time 1
execute if score @s 42.portal_time matches 21 run scoreboard players set @s 42.portal_time 0
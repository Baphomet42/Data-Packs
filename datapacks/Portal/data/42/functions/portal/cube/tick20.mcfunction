data merge entity @s {Saddle:0,InLove:0}
execute as @e[tag=42.portal_cube_hit,tag=42.portal_id,tag=42.portal_cube_held] unless entity @a[tag=42.portal_id] run tag @s remove 42.portal_cube_held
execute as @e[tag=42.portal_cube_hit,tag=42.portal_id,tag=!42.portal_cube_held] run data modify entity @s response set value 1
scoreboard players set @s 42.portal_temp 0
execute if entity @e[tag=42.portal_cube_hit,tag=42.portal_id,tag=42.portal_cube_held] as @a[tag=42.portal_id] run scoreboard players add @e[tag=42.portal_cube_tp,tag=42.portal_id] 42.portal_temp 1
execute if score @s 42.portal_temp matches 2.. run scoreboard players set @a[tag=42.portal_id] 42.portal_id 0
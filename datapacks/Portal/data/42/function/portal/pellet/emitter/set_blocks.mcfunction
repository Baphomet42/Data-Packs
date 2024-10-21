function 42:portal/tag_id
execute if score @s 42.portal_z matches 0 as @e[tag=42.portal_id,tag=42.portal_pellet_emitter_group] run rotate @s 0 -90
execute if score @s 42.portal_z matches 1 as @e[tag=42.portal_id,tag=42.portal_pellet_emitter_group] run rotate @s 0 90
execute if score @s 42.portal_z matches 2 as @e[tag=42.portal_id,tag=42.portal_pellet_emitter_group] run rotate @s 0 0
execute if score @s 42.portal_z matches 3 as @e[tag=42.portal_id,tag=42.portal_pellet_emitter_group] run rotate @s 180 0
execute if score @s 42.portal_z matches 4 as @e[tag=42.portal_id,tag=42.portal_pellet_emitter_group] run rotate @s 90 0
execute if score @s 42.portal_z matches 5 as @e[tag=42.portal_id,tag=42.portal_pellet_emitter_group] run rotate @s -90 0
tag @e remove 42.portal_id

execute at @s if score @s 42.portal_z matches 0..1 run fill ^-1 ^ ^ ^1 ^ ^ chain[axis=y] replace #42:portal_replace
execute at @s if score @s 42.portal_z matches 0..1 run fill ^ ^-1 ^ ^ ^1 ^ chain[axis=y] replace #42:portal_replace
execute at @s if score @s 42.portal_z matches 2..3 run fill ^-1 ^ ^ ^1 ^ ^ chain[axis=z] replace #42:portal_replace
execute at @s if score @s 42.portal_z matches 2..3 run fill ^ ^-1 ^ ^ ^1 ^ chain[axis=z] replace #42:portal_replace
execute at @s if score @s 42.portal_z matches 4..5 run fill ^-1 ^ ^ ^1 ^ ^ chain[axis=x] replace #42:portal_replace
execute at @s if score @s 42.portal_z matches 4..5 run fill ^ ^-1 ^ ^ ^1 ^ chain[axis=x] replace #42:portal_replace
fill ~ ~ ~ ~ ~ ~ barrier replace chain
function 42:portal/tag_id
execute if score @s 42.portal_z matches 0 run tp @e[tag=42.portal_id,tag=42.portal_pellet_emitter_group] ~ ~ ~ 0 -90
execute if score @s 42.portal_z matches 1 run tp @e[tag=42.portal_id,tag=42.portal_pellet_emitter_group] ~ ~ ~ 0 90
execute if score @s 42.portal_z matches 2 run tp @e[tag=42.portal_id,tag=42.portal_pellet_emitter_group] ~ ~ ~ 0 0
execute if score @s 42.portal_z matches 3 run tp @e[tag=42.portal_id,tag=42.portal_pellet_emitter_group] ~ ~ ~ 180 0
execute if score @s 42.portal_z matches 4 run tp @e[tag=42.portal_id,tag=42.portal_pellet_emitter_group] ~ ~ ~ 90 0
execute if score @s 42.portal_z matches 5 run tp @e[tag=42.portal_id,tag=42.portal_pellet_emitter_group] ~ ~ ~ -90 0
tag @e remove 42.portal_id

execute at @s if score @s 42.portal_z matches 0..1 run fill ^-1 ^ ^ ^1 ^ ^ chain[axis=y] replace #42:portal_replace
execute at @s if score @s 42.portal_z matches 0..1 run fill ^ ^-1 ^ ^ ^1 ^ chain[axis=y] replace #42:portal_replace
execute at @s if score @s 42.portal_z matches 2..3 run fill ^-1 ^ ^ ^1 ^ ^ chain[axis=z] replace #42:portal_replace
execute at @s if score @s 42.portal_z matches 2..3 run fill ^ ^-1 ^ ^ ^1 ^ chain[axis=z] replace #42:portal_replace
execute at @s if score @s 42.portal_z matches 4..5 run fill ^-1 ^ ^ ^1 ^ ^ chain[axis=x] replace #42:portal_replace
execute at @s if score @s 42.portal_z matches 4..5 run fill ^ ^-1 ^ ^ ^1 ^ chain[axis=x] replace #42:portal_replace
fill ~ ~ ~ ~ ~ ~ barrier replace chain
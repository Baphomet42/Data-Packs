scoreboard players add @s 42.portal_skin 1
execute if score @s 42.portal_skin matches 2.. run scoreboard players set @s 42.portal_skin 0
function 42:portal/tag_id

execute if score @s 42.portal_skin matches 0 as @e[tag=42.portal_id,tag=42.portal_skin] run data merge entity @s {block_state:{Name:black_concrete}}
execute if score @s 42.portal_skin matches 1 as @e[tag=42.portal_id,tag=42.portal_skin] run data merge entity @s {block_state:{Name:air}}

tag @e remove 42.portal_id
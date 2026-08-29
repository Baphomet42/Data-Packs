scoreboard players add @s 42.obj.portal.skin 1
execute if score @s 42.obj.portal.skin matches 2.. run scoreboard players set @s 42.obj.portal.skin 0
function 42:portal/tag_id

execute if score @s 42.obj.portal.skin matches 0 as @e[tag=42.tag.portal.id,tag=42.tag.portal.skin] run data merge entity @s {block_state:"minecraft:black_concrete"}
execute if score @s 42.obj.portal.skin matches 1 as @e[tag=42.tag.portal.id,tag=42.tag.portal.skin] run data merge entity @s {block_state:"minecraft:air"}

tag @e remove 42.tag.portal.id
tag @e remove 42.tag.portal.portal.pair
function 42:portal/tag_id
scoreboard players set #42.var.portal.dummy 42.obj.portal.temp 0
scoreboard players operation #42.var.portal.dummy 42.obj.portal.temp = @s 42.obj.portal.link
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.portal.group] if score @s 42.obj.portal.link = #42.var.portal.dummy 42.obj.portal.temp run tag @s add 42.tag.portal.portal.pair
tag @e remove 42.tag.portal.id
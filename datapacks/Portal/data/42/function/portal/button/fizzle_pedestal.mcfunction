fill ~ ~ ~ ~ ~ ~ air replace #fences
scoreboard players set @s 42.obj.portal.time 0
function 42:portal/unpower
function 42:portal/tag_id
kill @e[tag=42.tag.portal.id,tag=42.tag.portal.pedestal.group]
tag @e remove 42.tag.portal.id
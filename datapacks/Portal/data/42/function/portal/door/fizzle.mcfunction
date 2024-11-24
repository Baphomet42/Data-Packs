function 42:portal/tag_id
execute if score @s 42.obj.portal.var.x matches 1 run fill ~-1 ~ ~ ~1 ~2 ~ air replace polished_blackstone_wall
execute if score @s 42.obj.portal.var.x matches 2 run fill ~ ~ ~-1 ~ ~2 ~1 air replace polished_blackstone_wall
kill @e[tag=42.tag.portal.id,tag=42.tag.portal.door.group]
tag @e remove 42.tag.portal.id
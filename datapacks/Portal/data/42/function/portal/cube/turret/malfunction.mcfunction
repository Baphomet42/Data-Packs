function 42:portal/tag_id
data merge entity @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.eye,limit=1] {block_state:"minecraft:red_shulker_box",brightness:{block:12,sky:12}}
tag @e remove 42.tag.portal.id
tag @s add 42.tag.portal.turret.off
tag @s add 42.tag.portal.turret.malfunction
scoreboard players set @s 42.obj.portal.var.w 90
execute if entity @s[tag=!42.tag.portal.turret.open] run function 42:portal/cube/turret/arms/open
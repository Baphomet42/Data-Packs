tag @s add 42.tag.portal.turret.off
tag @s remove 42.tag.portal.turret.malfunction
scoreboard players set @s 42.obj.portal.var.w 0
scoreboard players reset @s 42.obj.portal.var.c
data modify entity @s HasVisualFire set value false
function 42:portal/tag_id
data merge entity @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.eye,limit=1] {block_state:{Name:black_shulker_box}}
data remove entity @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.eye,limit=1] brightness
execute if entity @s[tag=42.tag.portal.turret.open] run function 42:portal/cube/turret/arms/close
tag @e remove 42.tag.portal.id
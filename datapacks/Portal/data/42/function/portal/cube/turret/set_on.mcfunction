function 42:portal/tag_id
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis] at @s run rotate @s ~ 0
tag @e[tag=42.tag.portal.cube.main,tag=42.tag.portal.id] remove 42.tag.portal.turret.off
tag @e[tag=42.tag.portal.cube.main,tag=42.tag.portal.id] remove 42.tag.portal.turret.malfunction
data merge entity @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.eye,limit=1] {block_state:"minecraft:red_shulker_box",brightness:{block:12,sky:12}}
tag @e remove 42.tag.portal.id
execute if entity @s[tag=42.tag.portal.turret.oracle] run function 42:portal/cube/turret/setup_oracle
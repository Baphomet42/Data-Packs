function 42:portal/tag_id
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.eye,limit=1] at @s run function 42:portal/get_rot
execute at @s run function 42:portal/cube/turret/smart_rotate
function 42:portal/tag_id
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.dis] at @s run rotate @s ~180 0
execute as @e[tag=42.tag.portal.cube.tp,tag=42.tag.portal.id] at @s align xyz positioned ~.5 ~ ~.5 run tp @s ~ ~ ~
tag @e[tag=42.tag.portal.cube.tp,tag=42.tag.portal.id] remove 42.tag.portal.turret.off
tag @e[tag=42.tag.portal.cube.tp,tag=42.tag.portal.id] remove 42.tag.portal.turret.malfunction
tag @e[tag=42.tag.portal.cube.tp,tag=42.tag.portal.id] remove 42.tag.portal.turret.oracle
tag @e[tag=42.tag.portal.cube.tp,tag=42.tag.portal.id] remove 42.tag.portal.turret.nofind
tag @e[tag=42.tag.portal.cube.tp,tag=42.tag.portal.id] remove 42.tag.portal.turret.always_on
scoreboard players reset @s 42.obj.portal.var.c
data modify entity @s HasVisualFire set value false
data merge entity @e[tag=42.tag.portal.id,tag=42.tag.portal.turret.eye,limit=1] {block_state:{Name:"minecraft:red_shulker_box"},brightness:{block:12,sky:12}}
tag @e remove 42.tag.portal.id
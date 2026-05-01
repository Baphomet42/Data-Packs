tag @s remove 42.tag.portal.pellet.catcher.on
function 42:portal/tag_id
data merge entity @e[tag=42.tag.portal.id,tag=42.tag.portal.pellet.catcher.glass,limit=1,sort=nearest] {block_state:{Name:"minecraft:blue_stained_glass"}}
tag @e remove 42.tag.portal.id
function 42:portal/unpower
playsound block.beacon.activate block @a ~ ~ ~ 3 2
particle flash
function 42:portal/tag_id
data merge entity @e[tag=42.tag.portal.id,tag=42.tag.portal.pellet.catcher.glass,limit=1,sort=nearest] {block_state:{Name:orange_stained_glass}}
tag @e remove 42.tag.portal.id
tag @s add 42.tag.portal.pellet.catcher.on
function 42:portal/power
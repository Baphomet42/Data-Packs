function 42:portal/tag_id
data modify entity @e[tag=42.tag.portal.id,tag=42.tag.portal.laser.catcher.glass,limit=1] block_state.Name set value "minecraft:orange_stained_glass"
tag @e remove 42.tag.portal.id
function 42:portal/power
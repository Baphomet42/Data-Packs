function 42:portal/pellet/emitter/kill_pellets
fill ^-1 ^ ^ ^1 ^ ^ air replace chain
fill ^ ^-1 ^ ^ ^1 ^ air replace chain
fill ~ ~ ~ ~ ~ ~ air replace barrier
function 42:portal/tag_id
kill @e[tag=42.tag.portal.id,tag=42.tag.portal.pellet.emitter.group]
tag @e remove 42.tag.portal.id
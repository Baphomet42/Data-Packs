fill ^-1 ^ ^ ^1 ^ ^ air replace chain
fill ^ ^-1 ^ ^ ^1 ^ air replace chain
setblock ~ ~ ~ air
function 42:portal/pellet/catcher/unpower
function 42:portal/tag_id
kill @e[tag=42.portal_id,tag=42.portal_pellet_catcher_group]
tag @e remove 42.portal_id
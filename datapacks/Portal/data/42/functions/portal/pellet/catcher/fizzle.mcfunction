fill ^-1 ^ ^ ^1 ^ ^ air replace chain
fill ^ ^-1 ^ ^ ^1 ^ air replace chain
setblock ~ ~ ~ air
execute if entity @s[tag=42.portal_pellet_catcher_on] at @s as @e[tag=42.portal_pellet_on,limit=1,sort=nearest,distance=..1] at @s run function 42:portal/pellet/pellet/fizzle
function 42:portal/pellet/catcher/unpower
function 42:portal/tag_id
kill @e[tag=42.portal_id,tag=42.portal_pellet_catcher_group]
tag @e remove 42.portal_id
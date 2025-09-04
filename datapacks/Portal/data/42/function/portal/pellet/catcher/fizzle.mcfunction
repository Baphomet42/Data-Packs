fill ^-1 ^ ^ ^1 ^ ^ air replace iron_chain
fill ^ ^-1 ^ ^ ^1 ^ air replace iron_chain
fill ~ ~ ~ ~ ~ ~ air replace barrier
execute if entity @s[tag=42.tag.portal.pellet.catcher.on] at @s as @e[tag=42.tag.portal.pellet.on,limit=1,sort=nearest,distance=..1] at @s run function 42:portal/pellet/pellet/fizzle
function 42:portal/pellet/catcher/unpower
function 42:portal/tag_id
kill @e[tag=42.tag.portal.id,tag=42.tag.portal.pellet.catcher.group]
tag @e remove 42.tag.portal.id
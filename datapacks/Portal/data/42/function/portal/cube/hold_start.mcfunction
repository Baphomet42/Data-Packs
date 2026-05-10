tag @s add 42.tag.portal.cube.held
tag @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.hit,limit=1] add 42.tag.portal.cube.held
function 42:portal/generic/motion/end

tp @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.collision] ~ -512 ~
kill @e[tag=42.tag.portal.id,tag=42.tag.portal.cube.collision]
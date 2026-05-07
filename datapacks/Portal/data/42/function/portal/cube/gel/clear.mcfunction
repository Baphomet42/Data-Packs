tag @s remove 42.tag.portal.cube.gel
tag @s remove 42.tag.portal.cube.gel.blue
attribute @s minecraft:bounciness modifier remove 42:portal/gel/blue/cover
attribute @s minecraft:friction_modifier modifier remove 42:portal/gel/blue/cover
function 42:portal/tag_id
data modify entity @e[limit=1,tag=42.tag.portal.id,tag=42.tag.portal.cube.dis.gel] block_state.Name set value "minecraft:air"
playsound minecraft:entity.axolotl.splash block @a ~ ~ ~ 1 2
particle minecraft:splash ~ ~1 ~ .5 .5 .5 0 20 normal
tag @e remove 42.tag.portal.id
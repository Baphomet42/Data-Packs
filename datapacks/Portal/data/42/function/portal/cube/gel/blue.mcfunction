tag @s add 42.tag.portal.cube.gel
tag @s add 42.tag.portal.cube.gel.blue
attribute @s minecraft:bounciness modifier add 42:portal/gel/blue/cover 1 add_value
attribute @s minecraft:friction_modifier modifier add 42:portal/gel/blue/cover -1 add_multiplied_total
function 42:portal/tag_id
execute unless entity @s[tag=42.tag.portal.cube.held] run function 42:portal/cube/gel/blue_speed
data modify entity @e[limit=1,tag=42.tag.portal.id,tag=42.tag.portal.cube.dis.gel] block_state set value "minecraft:blue_stained_glass"
playsound minecraft:entity.axolotl.splash block @a ~ ~ ~ 1 2
particle minecraft:splash ~ ~1 ~ .5 .5 .5 0 20 normal
tag @e remove 42.tag.portal.id
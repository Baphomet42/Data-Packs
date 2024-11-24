function 42:portal/pellet/emitter/kill_pellets
function 42:portal/pellet/pellet/spawn
tp @e[tag=42.tag.portal.pellet.spawn] ^ ^ ^1 ~ ~
scoreboard players operation @e[tag=42.tag.portal.pellet.spawn] 42.obj.portal.id = @s 42.obj.portal.id
scoreboard players operation @e[tag=42.tag.portal.pellet.spawn] 42.obj.portal.lvl = @s 42.obj.portal.lvl
tag @e remove 42.tag.portal.pellet.spawn
playsound minecraft:entity.iron_golem.repair block @a ~ ~ ~ 2 1.75
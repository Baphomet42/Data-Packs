function 42:portal/pellet/emitter/kill_pellets
function 42:portal/pellet/pellet/spawn
tp @e[tag=42.portal_pellet_spawn] ^ ^ ^1 ~ ~
scoreboard players operation @e[tag=42.portal_pellet_spawn] 42.portal_id = @s 42.portal_id
tag @e remove 42.portal_pellet_spawn
playsound minecraft:entity.iron_golem.repair block @a ~ ~ ~ 2 1.75
#execute unless predicate 42:on_ground store result score @s 42.obj.portal.var.y run data get entity @s Motion[1] 1000
execute if score @s 42.obj.portal.death matches 1.. at @s run function 42:portal/level/unload
scoreboard players remove @s[scores={42.obj.portal.gun_use=1..}] 42.obj.portal.gun_use 1
scoreboard players remove @s[scores={42.obj.portal.gun_cooldown=1..}] 42.obj.portal.gun_cooldown 1
execute if score @s 42.obj.portal.sel matches 1.. at @s run function 42:portal/tools/sel_tick_player

tag @e remove 42.tag.portal.temp
function 42:portal/generic/entity_col/test_1p
tag @e[tag=42.tag.portal.grill.hit,scores={42.obj.portal.col=2}] add 42.tag.portal.temp
execute positioned ~ ~1.75 ~ run function 42:portal/generic/entity_col/test_1p
tag @e[tag=42.tag.portal.grill.hit,scores={42.obj.portal.col=2}] add 42.tag.portal.temp
execute if entity @e[tag=42.tag.portal.temp] run function 42:portal/grill/handle_player
tag @e remove 42.tag.portal.temp

tag @e[tag=42.tag.portal.elevator.start,distance=..15] add 42.tag.portal.prox_tick
tag @e[tag=42.tag.portal.zone,distance=..15] add 42.tag.portal.prox_tick
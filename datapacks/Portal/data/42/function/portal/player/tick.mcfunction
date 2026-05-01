# TODO optimize nbt jank
execute unless predicate 42:on_ground store result score @s 42.obj.portal.var.y run data get entity @s Motion[1] 1000
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

# TODO wip
#execute if entity @s[tag=42.tag.portal.cancel_air_friction,predicate=42:on_ground,tag=!42.tag.portal.gel_effect.blue,tag=!42.tag.portal.gel_effect.orange] run function 42:portal/generic/cancel_air_drag_remove

#execute at @s[tag=!42.tag.portal.gel_effect.blue] if block ~ ~ ~ blue_carpet run function 42:portal/gel/blue/apply
#execute at @s[tag=!42.tag.portal.gel_effect.blue] if block ~ ~-1 ~ blue_carpet run function 42:portal/gel/blue/apply
#execute at @s[tag=42.tag.portal.gel_effect.blue] unless block ~ ~ ~ blue_carpet unless block ~ ~-1 ~ blue_carpet run function 42:portal/gel/blue/remove
#execute at @s[tag=!42.tag.portal.gel_effect.orange] if block ~ ~ ~ orange_carpet run function 42:portal/gel/orange/apply
#execute at @s[tag=!42.tag.portal.gel_effect.orange] if block ~ ~-1 ~ orange_carpet run function 42:portal/gel/orange/apply
#execute at @s[tag=42.tag.portal.gel_effect.orange] unless block ~ ~ ~ orange_carpet unless block ~ ~-1 ~ orange_carpet run function 42:portal/gel/orange/remove

tag @e[tag=42.tag.portal.elevator.start,distance=..15] add 42.tag.portal.prox_tick
tag @e[tag=42.tag.portal.zone,distance=..15] add 42.tag.portal.prox_tick
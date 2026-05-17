execute if entity @s[gamemode=spectator] run return run scoreboard players set @s 42.obj.portal.death 0

execute if score @s 42.obj.portal.death matches 1.. run function 42:portal/player/death
scoreboard players add @s[scores={42.obj.portal.death=..-10000}] 42.obj.portal.death 1
execute if score @s 42.obj.portal.death matches -10000..-9000 at @s run function 42:portal/player/death_cooldown

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
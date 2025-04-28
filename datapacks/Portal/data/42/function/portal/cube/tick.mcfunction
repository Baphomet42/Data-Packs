function 42:portal/tag_id

execute if entity @e[limit=1,type=interaction,tag=42.tag.portal.cube.hit,tag=42.tag.portal.id,tag=42.tag.portal.cube.held] run function 42:portal/cube/tick_hold
execute positioned ~ ~-.005 ~ unless entity @e[limit=1,type=item_display,distance=...0001,tag=42.tag.portal.cube.display,tag=42.tag.portal.id] at @s run function 42:portal/cube/tick_move
tag @e[limit=1,type=interaction,tag=42.tag.portal.cube.hit,tag=42.tag.portal.id] add 42.tag.portal.ticked
execute if entity @s[tag=42.tag.portal.cube.level_freeze] run function 42:portal/cube/debug/level_unfreeze
execute as @e[limit=1,type=interaction,tag=42.tag.portal.cube.hit,tag=42.tag.portal.id] if function 42:portal/cube/interact_test at @s run function 42:portal/cube/interact

#rare tick
execute if score @s 42.obj.portal.time matches 200 run function 42:portal/cube/tick_rare
scoreboard players add @s 42.obj.portal.time 1
execute if score @s 42.obj.portal.time matches 201.. run scoreboard players set @s 42.obj.portal.time 0
tag @e remove 42.tag.portal.id

#special
execute if entity @s[tag=42.tag.portal.turret] at @s run function 42:portal/cube/turret/tick
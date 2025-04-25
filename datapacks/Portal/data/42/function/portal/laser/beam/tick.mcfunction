particle dust{color:[1,0,0],scale:1} ~ ~ ~ 0 0 0 0 1 force
execute if predicate {condition:"entity_properties",entity:"this",predicate:{periodic_tick:200}} run function 42:portal/laser/beam/check_emitter

execute unless entity @s[tag=42.tag.portal.laser.beam.end] run return 0
execute if score @s 42.obj.portal.time matches 320.. run return 0
execute unless block ^ ^ ^.5 #42:portal/portal_bullet_pass run return 0

function 42:portal/tag_id
execute unless entity @e[tag=42.tag.portal.id,tag=42.tag.portal.laser.emitter,tag=42.tag.portal.emitter.on] run return run tag @e remove 42.tag.portal.id
tag @e remove 42.tag.portal.id

function 42:portal/laser/beam/spawn_node
tp @s ^ ^ ^.5
scoreboard players add @s 42.obj.portal.time 1

execute if score @s 42.obj.portal.time matches 320.. run return 0
execute at @s unless block ^ ^ ^.5 #42:portal/portal_bullet_pass run return 0
execute at @s run function 42:portal/laser/beam/spawn_node
execute at @s run tp @s ^ ^ ^.5
scoreboard players add @s 42.obj.portal.time 1

execute if score @s 42.obj.portal.time matches 320.. run return 0
execute at @s unless block ^ ^ ^.5 #42:portal/portal_bullet_pass run return 0
execute at @s run function 42:portal/laser/beam/spawn_node
execute at @s run tp @s ^ ^ ^.5
scoreboard players add @s 42.obj.portal.time 1

execute if score @s 42.obj.portal.time matches 320.. run return 0
execute at @s unless block ^ ^ ^.5 #42:portal/portal_bullet_pass run return 0
execute at @s run function 42:portal/laser/beam/spawn_node
execute at @s run tp @s ^ ^ ^.5
scoreboard players add @s 42.obj.portal.time 1

execute if score @s 42.obj.portal.time matches 320.. run return 0
execute at @s unless block ^ ^ ^.5 #42:portal/portal_bullet_pass run return 0
execute at @s run function 42:portal/laser/beam/spawn_node
execute at @s run tp @s ^ ^ ^.5
scoreboard players add @s 42.obj.portal.time 1
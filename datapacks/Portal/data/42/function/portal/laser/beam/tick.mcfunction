execute if entity @s[tag=42.tag.portal.laser.beam.cube_watcher] run return run function 42:portal/laser/beam/tick_cube_watcher

particle dust{color:[1,0,0],scale:1} ~ ~ ~ 0 0 0 0 1 force
execute if predicate {condition:"minecraft:entity_properties",entity:"this",predicate:{"minecraft:periodic_tick":200}} run function 42:portal/laser/beam/check_emitter
execute at @s as @a[gamemode=!spectator,dx=0] positioned ~-1 ~-1 ~-1 if entity @s[dx=0] at @s run damage @s .0001 fireball by @e[limit=1,sort=nearest,distance=..5,tag=42.tag.portal.laser.beam]

execute unless entity @s[tag=42.tag.portal.laser.beam.end] run return 0

tag @s add 42.tag.portal.laser.beam.this
execute unless score @s 42.obj.portal.time matches 320.. as @e[tag=42.tag.portal.cube.laser,dx=0] positioned ~-1 ~-1 ~-1 if entity @s[dx=0] run function 42:portal/laser/beam/redirect_init
tag @s remove 42.tag.portal.laser.beam.this

execute if score @s 42.obj.portal.time matches 320.. run return 0
execute at @s unless block ^ ^ ^.5 #42:portal/portal_bullet_pass run return 0
execute at @s as @e[tag=42.tag.portal.cube.weighted,dx=0] positioned ~-1 ~-1 ~-1 if entity @s[dx=0] run return 0

function 42:portal/tag_id
execute unless entity @e[tag=42.tag.portal.id,tag=42.tag.portal.laser.emitter,tag=42.tag.portal.emitter.on] run return run tag @e remove 42.tag.portal.id
tag @e remove 42.tag.portal.id

execute at @s run function 42:portal/laser/beam/spawn_node
execute at @s run tp @s ^ ^ ^.5
scoreboard players add @s 42.obj.portal.time 1

execute if score @s 42.obj.portal.time matches 320.. run return 0
execute at @s unless block ^ ^ ^.5 #42:portal/portal_bullet_pass run return 0
execute at @s as @e[tag=42.tag.portal.cube.weighted,dx=0] positioned ~-1 ~-1 ~-1 if entity @s[dx=0] run return 0
execute at @s run function 42:portal/laser/beam/spawn_node
execute at @s run tp @s ^ ^ ^.5
scoreboard players add @s 42.obj.portal.time 1

execute if score @s 42.obj.portal.time matches 320.. run return 0
execute at @s unless block ^ ^ ^.5 #42:portal/portal_bullet_pass run return 0
execute at @s as @e[tag=42.tag.portal.cube.weighted,dx=0] positioned ~-1 ~-1 ~-1 if entity @s[dx=0] run return 0
execute at @s run function 42:portal/laser/beam/spawn_node
execute at @s run tp @s ^ ^ ^.5
scoreboard players add @s 42.obj.portal.time 1

execute if score @s 42.obj.portal.time matches 320.. run return 0
execute at @s unless block ^ ^ ^.5 #42:portal/portal_bullet_pass run return 0
execute at @s as @e[tag=42.tag.portal.cube.weighted,dx=0] positioned ~-1 ~-1 ~-1 if entity @s[dx=0] run return 0
execute at @s run function 42:portal/laser/beam/spawn_node
execute at @s run tp @s ^ ^ ^.5
scoreboard players add @s 42.obj.portal.time 1

execute if score @s 42.obj.portal.time matches 320.. run return 0
execute at @s unless block ^ ^ ^.5 #42:portal/portal_bullet_pass run return 0
execute at @s as @e[tag=42.tag.portal.cube.weighted,dx=0] positioned ~-1 ~-1 ~-1 if entity @s[dx=0] run return 0
execute at @s run function 42:portal/laser/beam/spawn_node
execute at @s run tp @s ^ ^ ^.5
scoreboard players add @s 42.obj.portal.time 1
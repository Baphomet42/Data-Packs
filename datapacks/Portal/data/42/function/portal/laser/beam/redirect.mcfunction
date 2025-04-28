execute unless block ^ ^ ^.5 #42:portal/portal_bullet_pass run return 0
execute at @s run function 42:portal/laser/beam/spawn_node
tp @s ^ ^ ^.5 ~ ~
scoreboard players add @s 42.obj.portal.time 1
execute positioned ^ ^ ^.5 run function 42:portal/laser/beam/spawn_cube_watcher
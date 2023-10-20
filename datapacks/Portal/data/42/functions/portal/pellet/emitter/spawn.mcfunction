tag @s remove 42.portal_temp
#
execute align xyz positioned ~-1 ~ ~-1 run function 42:portal/generic/test_range {dx:2,dy:1,dz:2,mode:unless,block:"'#42:portal_replace'"}
execute if score 42.portal 42.portal_temp matches 0 run tag @s add 42.portal_spawn_u
tag @s[tag=42.portal_spawn_u] add 42.portal_temp
#
execute unless entity @s[tag=42.portal_temp] align xyz positioned ~-1 ~-1 ~-1 run function 42:portal/generic/test_range {dx:2,dy:1,dz:2,mode:unless,block:"'#42:portal_replace'"}
execute unless entity @s[tag=42.portal_temp] if score 42.portal 42.portal_temp matches 0 run tag @s add 42.portal_spawn_d
tag @s[tag=42.portal_spawn_d] add 42.portal_temp
#
execute unless entity @s[tag=42.portal_temp] align xyz positioned ~-1 ~-1 ~ run function 42:portal/generic/test_range {dx:2,dy:2,dz:1,mode:unless,block:"'#42:portal_replace'"}
execute unless entity @s[tag=42.portal_temp] if score 42.portal 42.portal_temp matches 0 run tag @s add 42.portal_spawn_s
tag @s[tag=42.portal_spawn_s] add 42.portal_temp
#
execute unless entity @s[tag=42.portal_temp] align xyz positioned ~-1 ~-1 ~-1 run function 42:portal/generic/test_range {dx:2,dy:2,dz:1,mode:unless,block:"'#42:portal_replace'"}
execute unless entity @s[tag=42.portal_temp] if score 42.portal 42.portal_temp matches 0 run tag @s add 42.portal_spawn_n
tag @s[tag=42.portal_spawn_n] add 42.portal_temp
#
execute unless entity @s[tag=42.portal_temp] align xyz positioned ~ ~-1 ~-1 run function 42:portal/generic/test_range {dx:1,dy:2,dz:2,mode:unless,block:"'#42:portal_replace'"}
execute unless entity @s[tag=42.portal_temp] if score 42.portal 42.portal_temp matches 0 run tag @s add 42.portal_spawn_e
tag @s[tag=42.portal_spawn_e] add 42.portal_temp
#
execute unless entity @s[tag=42.portal_temp] align xyz positioned ~-1 ~-1 ~-1 run function 42:portal/generic/test_range {dx:1,dy:2,dz:2,mode:unless,block:"'#42:portal_replace'"}
execute unless entity @s[tag=42.portal_temp] if score 42.portal 42.portal_temp matches 0 run tag @s add 42.portal_spawn_w
tag @s[tag=42.portal_spawn_w] add 42.portal_temp
#
execute if entity @s[tag=!42.portal_temp] positioned ~-1 ~-1 ~-1 run function 42:portal/generic/find_all {dx:2,dy:2,dz:2,mode:unless,block:"'#42:portal_replace'"}
execute if entity @s[tag=42.portal_temp] run function 42:portal/pellet/emitter/spawn2
tag @s remove 42.portal_temp
tag @s remove 42.portal_spawn_u
tag @s remove 42.portal_spawn_d
tag @s remove 42.portal_spawn_e
tag @s remove 42.portal_spawn_w
tag @s remove 42.portal_spawn_n
tag @s remove 42.portal_spawn_s
kill @s[type=area_effect_cloud]
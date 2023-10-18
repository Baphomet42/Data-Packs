execute positioned ~-1 ~-2 ~-1 run function 42:portal/generic/test_range {dx:2,dy:2,dz:2,mode:unless,block:"'#42:portal_replace'"}
execute if score 42.portal 42.portal_temp matches 1 run function 42:portal/generic/spawn_fail_range
execute if score 42.portal 42.portal_temp matches 1 positioned ~-1 ~-2 ~-1 run function 42:portal/generic/find_all {dx:2,dy:2,dz:2,mode:unless,block:"'#42:portal_replace'"}
execute if score 42.portal 42.portal_temp matches 0 run function 42:portal/dropper/spawn2
kill @s[type=area_effect_cloud]
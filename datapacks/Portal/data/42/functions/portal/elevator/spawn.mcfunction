execute positioned ~-2 ~ ~-2 run function 42:portal/generic/test_range {dx:4,dy:3,dz:4,mode:unless,block:"'#42:portal_replace'"}
execute if score 42.portal 42.portal_temp matches 1 run function 42:portal/generic/spawn_fail_range
execute if score 42.portal 42.portal_temp matches 1 positioned ~-2 ~ ~-2 run function 42:portal/generic/find_all {dx:4,dy:3,dz:4,mode:unless,block:"'#42:portal_replace'"}
execute if score 42.portal 42.portal_temp matches 0 run function 42:portal/elevator/spawn2
kill @s[type=area_effect_cloud]
execute positioned ~-2 ~ ~-2 run function 42:portal/generic/test_range {dx:4,dy:3,dz:4,mode:unless,block:"'#42:portal/portal_replace'"}
execute if score #42.var.portal.dummy 42.obj.portal.temp matches 1 positioned ~-2 ~ ~-2 run function 42:portal/generic/find_all {dx:4,dy:3,dz:4,mode:unless,block:"'#42:portal/portal_replace'"}
execute if score #42.var.portal.dummy 42.obj.portal.temp matches 0 at @s run function 42:portal/elevator/move/set/commit
kill @s
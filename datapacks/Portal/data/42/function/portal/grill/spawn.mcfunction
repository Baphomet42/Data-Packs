tag @s remove 42.tag.portal.temp1
tag @s remove 42.tag.portal.temp2

execute as @p at @s run function 42:portal/get_rot

execute if entity @e[tag=42.tag.portal.rot,tag=!42.tag.portal.rot.e,tag=!42.tag.portal.rot.w] align xyz positioned ~.5 ~ ~.5 positioned ~-1 ~ ~ run function 42:portal/generic/test_range {dx:2,dy:2,dz:0,mode:unless,block:"'#42:portal/portal_replace'"}
execute if entity @e[tag=42.tag.portal.rot,tag=!42.tag.portal.rot.e,tag=!42.tag.portal.rot.w] align xyz positioned ~.5 ~ ~.5 if score #42.var.portal.dummy 42.obj.portal.temp matches 1 positioned ~-1 ~ ~ run function 42:portal/generic/find_all {dx:2,dy:2,dz:0,mode:unless,block:"'#42:portal/portal_replace'"}
execute if entity @e[tag=42.tag.portal.rot,tag=!42.tag.portal.rot.e,tag=!42.tag.portal.rot.w] if score #42.var.portal.dummy 42.obj.portal.temp matches 0 run tag @s add 42.tag.portal.temp1

execute if entity @e[tag=42.tag.portal.rot,tag=!42.tag.portal.rot.s,tag=!42.tag.portal.rot.n] align xyz positioned ~.5 ~ ~.5 positioned ~ ~ ~-1 run function 42:portal/generic/test_range {dx:0,dy:2,dz:2,mode:unless,block:"'#42:portal/portal_replace'"}
execute if entity @e[tag=42.tag.portal.rot,tag=!42.tag.portal.rot.s,tag=!42.tag.portal.rot.n] align xyz positioned ~.5 ~ ~.5 if score #42.var.portal.dummy 42.obj.portal.temp matches 1 positioned ~ ~ ~-1 run function 42:portal/generic/find_all {dx:0,dy:2,dz:2,mode:unless,block:"'#42:portal/portal_replace'"}
execute if entity @e[tag=42.tag.portal.rot,tag=!42.tag.portal.rot.s,tag=!42.tag.portal.rot.n] if score #42.var.portal.dummy 42.obj.portal.temp matches 0 run tag @s add 42.tag.portal.temp2

function 42:portal/get_rot2
execute if entity @s[tag=!42.tag.portal.temp1,tag=!42.tag.portal.temp2] run function 42:portal/generic/spawn_fail_range

execute if entity @s[tag=42.tag.portal.temp1] run tag @s remove 42.tag.portal.temp2
execute if entity @s[tag=42.tag.portal.temp1] run function 42:portal/grill/spawn2
execute if entity @s[tag=42.tag.portal.temp2] run function 42:portal/grill/spawn2

tag @s remove 42.tag.portal.temp1
tag @s remove 42.tag.portal.temp2
kill @s[type=area_effect_cloud]
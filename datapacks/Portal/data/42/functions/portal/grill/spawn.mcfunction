tag @s remove 42.portal_temp1
tag @s remove 42.portal_temp2
#
execute as @p at @s run function 42:portal/get_rot
#
execute if entity @e[tag=42.portal_rot,tag=!42.portal_rot_e,tag=!42.portal_rot_w] align xyz positioned ~.5 ~ ~.5 positioned ~-1 ~ ~ run function 42:portal/generic/test_range {dx:2,dy:2,dz:0,mode:unless,block:"'#42:portal_replace'"}
execute if entity @e[tag=42.portal_rot,tag=!42.portal_rot_e,tag=!42.portal_rot_w] align xyz positioned ~.5 ~ ~.5 if score 42.portal 42.portal_temp matches 1 positioned ~-1 ~ ~ run function 42:portal/generic/find_all {dx:2,dy:2,dz:0,mode:unless,block:"'#42:portal_replace'"}
execute if entity @e[tag=42.portal_rot,tag=!42.portal_rot_e,tag=!42.portal_rot_w] if score 42.portal 42.portal_temp matches 0 run tag @s add 42.portal_temp1
#
execute if entity @e[tag=42.portal_rot,tag=!42.portal_rot_s,tag=!42.portal_rot_n] align xyz positioned ~.5 ~ ~.5 positioned ~ ~ ~-1 run function 42:portal/generic/test_range {dx:0,dy:2,dz:2,mode:unless,block:"'#42:portal_replace'"}
execute if entity @e[tag=42.portal_rot,tag=!42.portal_rot_s,tag=!42.portal_rot_n] align xyz positioned ~.5 ~ ~.5 if score 42.portal 42.portal_temp matches 1 positioned ~ ~ ~-1 run function 42:portal/generic/find_all {dx:0,dy:2,dz:2,mode:unless,block:"'#42:portal_replace'"}
execute if entity @e[tag=42.portal_rot,tag=!42.portal_rot_s,tag=!42.portal_rot_n] if score 42.portal 42.portal_temp matches 0 run tag @s add 42.portal_temp2
#
function 42:portal/get_rot2
execute if entity @s[tag=!42.portal_temp1,tag=!42.portal_temp2] run function 42:portal/generic/spawn_fail_range
execute if entity @s[tag=42.portal_temp1] run function 42:portal/grill/spawn2
execute if entity @s[tag=42.portal_temp2,tag=!42.portal_temp1] run function 42:portal/grill/spawn2
tag @s remove 42.portal_temp1
tag @s remove 42.portal_temp2
kill @s[type=area_effect_cloud]
tag @s remove 42.tag.portal.temp

execute align xyz positioned ~-1 ~ ~-1 run function 42:portal/generic/test_range {dx:2,dy:1,dz:2,mode:"unless",block:"'#42:portal/portal_replace'"}
execute if score #42.var.portal.dummy 42.obj.portal.temp matches 0 run tag @s add 42.tag.portal.tool.arg.u
tag @s[tag=42.tag.portal.tool.arg.u] add 42.tag.portal.temp

execute unless entity @s[tag=42.tag.portal.temp] align xyz positioned ~-1 ~-1 ~-1 run function 42:portal/generic/test_range {dx:2,dy:1,dz:2,mode:"unless",block:"'#42:portal/portal_replace'"}
execute unless entity @s[tag=42.tag.portal.temp] if score #42.var.portal.dummy 42.obj.portal.temp matches 0 run tag @s add 42.tag.portal.tool.arg.d
tag @s[tag=42.tag.portal.tool.arg.d] add 42.tag.portal.temp

execute unless entity @s[tag=42.tag.portal.temp] align xyz positioned ~-1 ~-1 ~ run function 42:portal/generic/test_range {dx:2,dy:2,dz:1,mode:"unless",block:"'#42:portal/portal_replace'"}
execute unless entity @s[tag=42.tag.portal.temp] if score #42.var.portal.dummy 42.obj.portal.temp matches 0 run tag @s add 42.tag.portal.tool.arg.s
tag @s[tag=42.tag.portal.tool.arg.s] add 42.tag.portal.temp

execute unless entity @s[tag=42.tag.portal.temp] align xyz positioned ~-1 ~-1 ~-1 run function 42:portal/generic/test_range {dx:2,dy:2,dz:1,mode:"unless",block:"'#42:portal/portal_replace'"}
execute unless entity @s[tag=42.tag.portal.temp] if score #42.var.portal.dummy 42.obj.portal.temp matches 0 run tag @s add 42.tag.portal.tool.arg.n
tag @s[tag=42.tag.portal.tool.arg.n] add 42.tag.portal.temp

execute unless entity @s[tag=42.tag.portal.temp] align xyz positioned ~ ~-1 ~-1 run function 42:portal/generic/test_range {dx:1,dy:2,dz:2,mode:"unless",block:"'#42:portal/portal_replace'"}
execute unless entity @s[tag=42.tag.portal.temp] if score #42.var.portal.dummy 42.obj.portal.temp matches 0 run tag @s add 42.tag.portal.tool.arg.e
tag @s[tag=42.tag.portal.tool.arg.e] add 42.tag.portal.temp

execute unless entity @s[tag=42.tag.portal.temp] align xyz positioned ~-1 ~-1 ~-1 run function 42:portal/generic/test_range {dx:1,dy:2,dz:2,mode:"unless",block:"'#42:portal/portal_replace'"}
execute unless entity @s[tag=42.tag.portal.temp] if score #42.var.portal.dummy 42.obj.portal.temp matches 0 run tag @s add 42.tag.portal.tool.arg.w
tag @s[tag=42.tag.portal.tool.arg.w] add 42.tag.portal.temp

execute if entity @s[tag=!42.tag.portal.temp] positioned ~-1 ~-1 ~-1 run function 42:portal/generic/find_all {dx:2,dy:2,dz:2,mode:"unless",block:"'#42:portal/portal_replace'"}
execute if entity @s[tag=42.tag.portal.temp] run function 42:portal/laser/catcher/spawn2
tag @s remove 42.tag.portal.temp
tag @s remove 42.tag.portal.tool.arg.u
tag @s remove 42.tag.portal.tool.arg.d
tag @s remove 42.tag.portal.tool.arg.e
tag @s remove 42.tag.portal.tool.arg.w
tag @s remove 42.tag.portal.tool.arg.n
tag @s remove 42.tag.portal.tool.arg.s
kill @s[type=area_effect_cloud]
execute if predicate 42:has_vehicle run return fail

execute if score @s 42.obj.portal.timestamp.used_portal >= #42.var.portal.dummy3 42.obj.portal.temp \
    if score @s 42.obj.portal.timestamp.used_portal <= #42.var.portal.dummy2 42.obj.portal.temp run return fail

execute if score #42.var.portal.dummy 42.obj.portal.temp matches 0 \
    at @s align xyz positioned ~.5 ~1 ~.5 unless entity @e[tag=42.tag.portal.portal.tp_this,distance=...25] \
    at @s align xyz positioned ~.5 ~ ~.5 unless entity @e[tag=42.tag.portal.portal.tp_this,distance=...25] \
    at @s align xyz positioned ~.5 ~-1 ~.5 unless entity @e[tag=42.tag.portal.portal.tp_this,distance=...25] \
    run return fail

execute if score #42.var.portal.dummy 42.obj.portal.temp matches -2 positioned ~-3 ~ ~-3 positioned ~ ~-.5 ~ unless entity @s[dx=6,dy=0,dz=6] run return fail
execute if score #42.var.portal.dummy 42.obj.portal.temp matches 2 positioned ~-3 ~ ~-3 positioned ~ ~-.25 ~ unless entity @s[dx=6,dy=0,dz=6] run return fail

execute if entity @s[type=#42:portal/portal_exempt] \
    unless entity @s[type=player,gamemode=!spectator] \
    unless entity @s[tag=42.tag.portal.motion] \
    unless entity @s[tag=42.tag.portal.pellet,tag=!42.tag.portal.pellet.on] \
    unless entity @s[tag=42.tag.portal.gel.droplet] \
    run return fail

execute if entity @s[tag=42.tag.tech,tag=!42.tag.portal.cube.main] run return fail

execute if entity @s[tag=42.tag.portal.cube.main,tag=42.tag.portal.cube.held] run return fail

execute store result score @s 42.obj.portal.timestamp.used_portal run time query gametime
return 1
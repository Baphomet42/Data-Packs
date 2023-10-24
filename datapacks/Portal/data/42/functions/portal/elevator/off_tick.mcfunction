function 42:portal/tag_id
tag @e remove 42.portal_temp
execute positioned ~-1.5 ~.5 ~-1.5 run tag @a[dx=2,dy=2,dz=2,gamemode=!spectator] add 42.portal_temp
execute if entity @a[tag=42.portal_temp] run function 42:portal/elevator/try_start
tag @e remove 42.portal_temp
tag @e remove 42.portal_id
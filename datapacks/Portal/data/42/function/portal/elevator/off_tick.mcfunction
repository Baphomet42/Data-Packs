function 42:portal/tag_id
execute as @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator,tag=42.tag.portal.elevator.search] at @s run function 42:portal/elevator/move/set/tick
tag @e remove 42.tag.portal.temp
execute unless entity @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator,tag=42.tag.portal.elevator.search] unless entity @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator,tag=42.tag.portal.elevator.off] positioned ~-1.5 ~.5 ~-1.5 run tag @a[dx=2,dy=2,dz=2,gamemode=!spectator,tag=!42.tag.portal.motion] add 42.tag.portal.temp
execute if entity @a[tag=42.tag.portal.temp] run function 42:portal/elevator/try_start
tag @e remove 42.tag.portal.temp
tag @e remove 42.tag.portal.id
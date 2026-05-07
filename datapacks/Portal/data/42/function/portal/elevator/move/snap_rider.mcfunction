data modify storage 42:portal macro.y set from entity @e[tag=42.tag.portal.elevator.car,tag=42.tag.portal.id,limit=1] Pos[1]
execute at @e[tag=42.tag.portal.elevator.car,tag=42.tag.portal.id,limit=1] positioned ~-1.5 ~-1.1 ~-1.5 as @a[dx=2,dy=0,dz=2] at @s run function 42:portal/elevator/move/snap_rider_macro with storage 42:portal macro
data remove storage 42:portal macro
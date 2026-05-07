$execute positioned 0.0 0.5 0.0 positioned ~$(x) ~$(y) ~$(z) rotated $(rot) 0 positioned ^$(l) ^$(u) ^$(f) rotated as @s run tp @s ~ ~ ~ ~ ~
execute at @s if score @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.main,limit=1] 42.obj.portal.yrot2 matches 1 at @s run rotate @s ~90 ~
execute at @s if score @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.main,limit=1] 42.obj.portal.yrot2 matches 2 at @s run rotate @s ~180 ~
execute at @s if score @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator.main,limit=1] 42.obj.portal.yrot2 matches 3 at @s run rotate @s ~-90 ~
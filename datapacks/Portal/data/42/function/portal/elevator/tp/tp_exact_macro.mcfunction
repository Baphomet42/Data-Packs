$execute positioned 0.0 0.0 0.0 run tp @s ~$(x) ~$(y) ~$(z) ~ ~
execute at @s if score @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator,limit=1] 42.obj.portal.yrot2 matches 1 at @s run rotate @s ~90 ~
execute at @s if score @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator,limit=1] 42.obj.portal.yrot2 matches 2 at @s run rotate @s ~180 ~
execute at @s if score @e[tag=42.tag.portal.id,tag=42.tag.portal.elevator,limit=1] 42.obj.portal.yrot2 matches 3 at @s run rotate @s ~-90 ~
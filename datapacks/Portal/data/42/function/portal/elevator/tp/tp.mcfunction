$tp @s $(x) $(y) $(z) ~ ~
execute at @s if score @e[tag=42.portal_id,tag=42.portal_elevator,limit=1] 42.portal_yrot2 matches 1 at @s run tp @s ~ ~ ~ ~90 ~
execute at @s if score @e[tag=42.portal_id,tag=42.portal_elevator,limit=1] 42.portal_yrot2 matches 2 at @s run tp @s ~ ~ ~ ~180 ~
execute at @s if score @e[tag=42.portal_id,tag=42.portal_elevator,limit=1] 42.portal_yrot2 matches 3 at @s run tp @s ~ ~ ~ ~-90 ~
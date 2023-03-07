tag @e remove 42.titanChomp
tag @e remove 42.titanAttack
tag @e remove 42.titan_sel
tag @s add 42.titan_sel
tag @a[gamemode=creative] add 42.titan_sel
tag @a[gamemode=spectator] add 42.titan_sel
execute positioned ~-3 ~8 ~-3 as @e[type=#42:titan_targets,dx=6,dy=4,dz=6,scores={42.titan_time=20..},tag=!42.titan_sel] run tag @s add 42.titanChomp
execute positioned ~-3 ~8 ~-3 as @e[type=#42:titan_targets,dx=6,dy=5,dz=6,scores={42.titan_time=20..},tag=!42.titan_sel] run tag @s add 42.titanAttack
execute as @e[type=#42:titan_targets,distance=..3,scores={42.titan_time=20..},tag=!42.titan_sel] run tag @s add 42.titanAttack
execute positioned ~ ~1 ~ rotated ~ 0 positioned ^ ^ ^2.5 as @e[type=#42:titan_targets,distance=..3,scores={42.titan_time=20..},tag=!42.titan_sel] run tag @s add 42.titanAttack
execute positioned ~ ~3.5 ~ rotated ~ 0 positioned ^ ^ ^2.5 as @e[type=#42:titan_targets,distance=..3,scores={42.titan_time=20..},tag=!42.titan_sel] run tag @s add 42.titanAttack
execute positioned ~ ~6 ~ rotated ~ 0 positioned ^ ^ ^2.5 as @e[type=#42:titan_targets,distance=..3,scores={42.titan_time=20..},tag=!42.titan_sel] run tag @s add 42.titanAttack
execute if entity @e[type=#42:titan_targets,tag=42.titanAttack] run effect give @s hunger 1 0 true
tag @a remove 42.titan_sel
execute unless entity @e[type=#42:titan_targets,tag=42.titanChomp] as @e[type=#42:titan_targets,tag=42.titanAttack,limit=1,sort=random] at @s run function 42:xltt/titan/attack
execute if entity @e[type=#42:titan_targets,tag=42.titanChomp] as @e[type=#42:titan_targets,tag=42.titanChomp,limit=1,sort=random] at @s run function 42:xltt/titan/attack
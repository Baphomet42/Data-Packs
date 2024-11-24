execute if entity @s[tag=42.tag.portal.ss] as @e[tag=42.tag.portal.temp] at @s run rotate @s 0 ~
execute if entity @s[tag=42.tag.portal.ww] as @e[tag=42.tag.portal.temp] at @s run rotate @s 90 ~
execute if entity @s[tag=42.tag.portal.ww] run scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.portal] 42.obj.portal.var.x 1
execute if entity @s[tag=42.tag.portal.nn] as @e[tag=42.tag.portal.temp] at @s run rotate @s 180 ~
execute if entity @s[tag=42.tag.portal.nn] run scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.portal] 42.obj.portal.var.x 2
execute if entity @s[tag=42.tag.portal.ee] as @e[tag=42.tag.portal.temp] at @s run rotate @s -90 ~
execute if entity @s[tag=42.tag.portal.ee] run scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.portal] 42.obj.portal.var.x 3
scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.portal] 42.obj.portal.var.y 2
execute as @e[tag=42.tag.portal.temp,tag=42.tag.portal.portal] at @s positioned ^ ^ ^-.5 run tp @s ~ ~.5 ~
execute as @e[tag=42.tag.portal.temp] at @s run rotate @s ~ 90
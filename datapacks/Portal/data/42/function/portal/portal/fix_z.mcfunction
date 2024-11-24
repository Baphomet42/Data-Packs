scoreboard players set @s 42.obj.portal.var.x -500
scoreboard players set @s 42.obj.portal.var.y 1000
execute positioned ~1 ~ ~ unless entity @e[tag=42.tag.portal.portal.wall,tag=42.tag.portal.temp,distance=...25] run scoreboard players add @s 42.obj.portal.var.y 1
execute positioned ~-1 ~ ~ unless entity @e[tag=42.tag.portal.portal.wall,tag=42.tag.portal.temp,distance=...25] run scoreboard players add @s 42.obj.portal.var.y 1
execute positioned ~-1 ~ ~ unless entity @e[tag=42.tag.portal.portal.wall,tag=42.tag.portal.temp,distance=...25] run scoreboard players remove @s 42.obj.portal.var.x 1
execute store result entity @s transformation.translation[0] float .001 run scoreboard players get @s 42.obj.portal.var.x
execute store result entity @s transformation.scale[0] float .001 run scoreboard players get @s 42.obj.portal.var.y

scoreboard players set @s 42.obj.portal.var.x -500
scoreboard players set @s 42.obj.portal.var.y 1000
execute positioned ~ ~1 ~ unless entity @e[tag=42.tag.portal.portal.wall,tag=42.tag.portal.temp,distance=...25] run scoreboard players add @s 42.obj.portal.var.y 1
execute positioned ~ ~-1 ~ unless entity @e[tag=42.tag.portal.portal.wall,tag=42.tag.portal.temp,distance=...25] run scoreboard players add @s 42.obj.portal.var.y 1
execute positioned ~ ~-1 ~ unless entity @e[tag=42.tag.portal.portal.wall,tag=42.tag.portal.temp,distance=...25] run scoreboard players remove @s 42.obj.portal.var.x 1
execute store result entity @s transformation.translation[1] float .001 run scoreboard players get @s 42.obj.portal.var.x
execute store result entity @s transformation.scale[1] float .001 run scoreboard players get @s 42.obj.portal.var.y

scoreboard players set @s 42.obj.portal.var.x -500
scoreboard players set @s 42.obj.portal.var.y 1000
execute positioned ~ ~ ~1 unless entity @e[tag=42.tag.portal.portal.wall,tag=42.tag.portal.temp,distance=...25] run scoreboard players add @s 42.obj.portal.var.y 1
execute positioned ~ ~ ~-1 unless entity @e[tag=42.tag.portal.portal.wall,tag=42.tag.portal.temp,distance=...25] run scoreboard players add @s 42.obj.portal.var.y 1
execute positioned ~ ~ ~-1 unless entity @e[tag=42.tag.portal.portal.wall,tag=42.tag.portal.temp,distance=...25] run scoreboard players remove @s 42.obj.portal.var.x 1
execute store result entity @s transformation.translation[2] float .001 run scoreboard players get @s 42.obj.portal.var.x
execute store result entity @s transformation.scale[2] float .001 run scoreboard players get @s 42.obj.portal.var.y
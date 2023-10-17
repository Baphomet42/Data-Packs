scoreboard players set @s 42.portal_x -500
scoreboard players set @s 42.portal_y 1000
execute positioned ~1 ~ ~ unless entity @e[tag=42.portal_wall,tag=42.portal_temp,distance=...25] run scoreboard players add @s 42.portal_y 1
execute positioned ~-1 ~ ~ unless entity @e[tag=42.portal_wall,tag=42.portal_temp,distance=...25] run scoreboard players add @s 42.portal_y 1
execute positioned ~-1 ~ ~ unless entity @e[tag=42.portal_wall,tag=42.portal_temp,distance=...25] run scoreboard players remove @s 42.portal_x 1
execute store result entity @s transformation.translation[0] float .001 run scoreboard players get @s 42.portal_x
execute store result entity @s transformation.scale[0] float .001 run scoreboard players get @s 42.portal_y
#
scoreboard players set @s 42.portal_x -500
scoreboard players set @s 42.portal_y 1000
execute positioned ~ ~1 ~ unless entity @e[tag=42.portal_wall,tag=42.portal_temp,distance=...25] run scoreboard players add @s 42.portal_y 1
execute positioned ~ ~-1 ~ unless entity @e[tag=42.portal_wall,tag=42.portal_temp,distance=...25] run scoreboard players add @s 42.portal_y 1
execute positioned ~ ~-1 ~ unless entity @e[tag=42.portal_wall,tag=42.portal_temp,distance=...25] run scoreboard players remove @s 42.portal_x 1
execute store result entity @s transformation.translation[1] float .001 run scoreboard players get @s 42.portal_x
execute store result entity @s transformation.scale[1] float .001 run scoreboard players get @s 42.portal_y
#
scoreboard players set @s 42.portal_x -500
scoreboard players set @s 42.portal_y 1000
execute positioned ~ ~ ~1 unless entity @e[tag=42.portal_wall,tag=42.portal_temp,distance=...25] run scoreboard players add @s 42.portal_y 1
execute positioned ~ ~ ~-1 unless entity @e[tag=42.portal_wall,tag=42.portal_temp,distance=...25] run scoreboard players add @s 42.portal_y 1
execute positioned ~ ~ ~-1 unless entity @e[tag=42.portal_wall,tag=42.portal_temp,distance=...25] run scoreboard players remove @s 42.portal_x 1
execute store result entity @s transformation.translation[2] float .001 run scoreboard players get @s 42.portal_x
execute store result entity @s transformation.scale[2] float .001 run scoreboard players get @s 42.portal_y
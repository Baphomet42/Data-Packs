tag @e remove 42.tag.portal.pellet.spawn
summon item_display ~ ~.5 ~ {Tags:["42.tag.summon","42.tag.portal.pellet","42.tag.portal.tags.has_tick","42.tag.portal.pellet.spawn"],CustomNameVisible:false,CustomName:"High Energy Pellet",item:{id:"minecraft:ender_eye"},item_display:fixed,billboard:center,view_range:10f,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
scoreboard players set @e[tag=42.tag.portal.pellet.spawn] 42.obj.portal.id -2
execute as @e[tag=42.tag.portal.pellet.spawn] at @s run rotate @s 0 -90
scoreboard players set @e[tag=42.tag.portal.pellet.spawn] 42.obj.portal.time 320
scoreboard players set @e[tag=42.tag.portal.pellet.spawn] 42.obj.portal.var.x 8
scoreboard players set @e[tag=42.tag.portal.pellet.spawn] 42.obj.portal.var.y 0
scoreboard players set @e[tag=42.tag.portal.pellet.spawn] 42.obj.portal.var.z 0
scoreboard players set @e[tag=42.tag.portal.pellet.spawn] 42.obj.portal.lvl -1
execute if entity @s[tag=42.tag.portal.tool.spawn.pellet.super] run scoreboard players set @e[tag=42.tag.portal.pellet.spawn] 42.obj.portal.time -1
execute if entity @s[tag=42.tag.portal.tool.spawn.pellet.super] run tag @e[tag=42.tag.portal.pellet.spawn] add 42.tag.portal.pellet.super
execute if entity @s[tag=42.tag.portal.tool.spawn.pellet.super] run data merge entity @e[tag=42.tag.portal.pellet.spawn,limit=1] {item:{id:"minecraft:ender_pearl"},CustomName:"High Energy Super Pellet"}
execute if entity @s[tag=42.tag.portal.pellet.spawner] run function 42:portal/pellet/spawner/config
kill @s[type=area_effect_cloud]
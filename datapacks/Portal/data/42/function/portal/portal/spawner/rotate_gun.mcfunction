scoreboard players set #42.var.portal.temp_rot 42.obj.portal.temp -1
execute if entity @e[tag=42.tag.portal.temp,tag=42.tag.portal.nn] run scoreboard players set #42.var.portal.temp_rot 42.obj.portal.temp 0
execute if entity @e[tag=42.tag.portal.temp,tag=42.tag.portal.ss] run scoreboard players set #42.var.portal.temp_rot 42.obj.portal.temp 1
execute if entity @e[tag=42.tag.portal.temp,tag=42.tag.portal.ee] run scoreboard players set #42.var.portal.temp_rot 42.obj.portal.temp 2
execute if entity @e[tag=42.tag.portal.temp,tag=42.tag.portal.ww] run scoreboard players set #42.var.portal.temp_rot 42.obj.portal.temp 3

tag @e[tag=42.tag.portal.temp] remove 42.tag.portal.nn
tag @e[tag=42.tag.portal.temp] remove 42.tag.portal.ss
tag @e[tag=42.tag.portal.temp] remove 42.tag.portal.ee
tag @e[tag=42.tag.portal.temp] remove 42.tag.portal.ww

execute if score #42.var.portal.temp_rot 42.obj.portal.temp matches 0 run tag @e[tag=42.tag.portal.temp] add 42.tag.portal.ss
execute if score #42.var.portal.temp_rot 42.obj.portal.temp matches 1 run tag @e[tag=42.tag.portal.temp] add 42.tag.portal.nn
execute if score #42.var.portal.temp_rot 42.obj.portal.temp matches 2 run tag @e[tag=42.tag.portal.temp] add 42.tag.portal.ww
execute if score #42.var.portal.temp_rot 42.obj.portal.temp matches 3 run tag @e[tag=42.tag.portal.temp] add 42.tag.portal.ee
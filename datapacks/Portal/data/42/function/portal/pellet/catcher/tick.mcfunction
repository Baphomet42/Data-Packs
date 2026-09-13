execute if entity @s[tag=42.tag.portal.pellet.catcher.on] run return 1
execute if entity @s[tag=42.tag.portal.pellet.catcher.nolaser] run return 1
scoreboard players add @s 42.obj.portal.time 1
execute if score @s 42.obj.portal.time matches 20.. run scoreboard players set @s 42.obj.portal.time 0
execute if score @s 42.obj.portal.time matches 5 run function 42:portal/pellet/catcher/laser/reset
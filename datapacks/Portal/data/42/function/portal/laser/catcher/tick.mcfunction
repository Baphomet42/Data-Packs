tag @s remove 42.tag.portal.laser.catcher.on
execute if entity @e[tag=42.tag.portal.laser.beam.end,distance=...75,limit=1] run tag @s add 42.tag.portal.laser.catcher.on
execute if entity @s[tag=42.tag.portal.laser.catcher.on,tag=!42.tag.portal.laser.catcher.on2] run function 42:portal/laser/catcher/power
execute if entity @s[tag=!42.tag.portal.laser.catcher.on,tag=42.tag.portal.laser.catcher.on2] run function 42:portal/laser/catcher/unpower
tag @s[tag=42.tag.portal.laser.catcher.on] add 42.tag.portal.laser.catcher.on2
tag @s[tag=!42.tag.portal.laser.catcher.on] remove 42.tag.portal.laser.catcher.on2

execute if entity @s[tag=42.tag.portal.laser.catcher.on] run return 1
execute if entity @s[tag=42.tag.portal.laser.catcher.nolaser] run return 1
scoreboard players add @s 42.obj.portal.time 1
execute if score @s 42.obj.portal.time matches 20.. run scoreboard players set @s 42.obj.portal.time 0
execute if score @s 42.obj.portal.time matches 5 run function 42:portal/pellet/catcher/laser/reset
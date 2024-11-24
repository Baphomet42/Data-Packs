particle end_rod ^ ^ ^.3 .15 .15 .15 0 5 force
execute positioned ^ ^ ^.9 align xyz positioned ~.5 ~.5 ~.5 if entity @e[tag=42.tag.portal.pellet.catcher,tag=!42.tag.portal.pellet.catcher.on,distance=...1] run function 42:portal/pellet/pellet/activate

scoreboard players set @s 42.obj.portal.var.z 0
execute if entity @s[tag=!42.tag.portal.pellet.on] if entity @s[x_rotation=0] run rotate @s ~180 ~
execute if entity @s[tag=!42.tag.portal.pellet.on] if entity @s[x_rotation=-90] run scoreboard players set @s 42.obj.portal.var.z 1
execute if entity @s[tag=!42.tag.portal.pellet.on] if entity @s[x_rotation=90] run scoreboard players set @s 42.obj.portal.var.z 2
execute if entity @s[tag=!42.tag.portal.pellet.on] if score @s 42.obj.portal.var.z matches 1 run rotate @s ~ 90
execute if entity @s[tag=!42.tag.portal.pellet.on] if score @s 42.obj.portal.var.z matches 2 run rotate @s ~ -90

execute if entity @s[tag=!42.tag.portal.pellet.on] run playsound minecraft:entity.iron_golem.repair neutral @a ~ ~ ~ 2 1.25
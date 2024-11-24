tag @s remove 42.tag.portal.temp
execute unless score @e[tag=42.tag.portal.portal.tp1,limit=1] 42.obj.portal.var.y matches 0 run tag @s add 42.tag.portal.temp
execute unless score @e[tag=42.tag.portal.portal.tp2,limit=1] 42.obj.portal.var.y matches 0 run tag @s add 42.tag.portal.temp
execute if entity @s[tag=42.tag.portal.temp] run function 42:portal/cube/turret/fall
tag @s remove 42.tag.portal.temp
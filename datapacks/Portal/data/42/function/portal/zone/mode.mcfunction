$scoreboard players set @s 42.obj.portal.var.x $(x)
tag @s remove 42.tag.portal.zone.cool
function 42:portal/zone/update
execute as @e[tag=42.tag.portal.selected,type=!player] at @s run function 42:portal/tools/sel_new
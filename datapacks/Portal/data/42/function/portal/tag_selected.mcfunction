tag @e remove 42.tag.portal.selected
tag @e remove 42.tag.portal.temp
tag @s add 42.tag.portal.selected
execute as @e if score @s 42.obj.portal.sel = @e[limit=1,tag=42.tag.portal.selected] 42.obj.portal.sel run tag @s add 42.tag.portal.temp
tag @s remove 42.tag.portal.selected
execute at @s run tag @e[limit=1,tag=42.tag.portal.temp,sort=nearest,type=player] add 42.tag.portal.selected
execute at @s run tag @e[limit=1,tag=42.tag.portal.temp,sort=nearest,type=!player,tag=!42.tag.portal.selgroup.extra] add 42.tag.portal.selected
tag @e remove 42.tag.portal.temp
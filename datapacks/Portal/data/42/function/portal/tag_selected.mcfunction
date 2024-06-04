tag @e remove 42.portal_selected
tag @e remove 42.portal_temp
tag @s add 42.portal_selected
execute as @e if score @s 42.portal_sel = @e[tag=42.portal_selected,limit=1] 42.portal_sel run tag @s add 42.portal_temp
tag @s remove 42.portal_selected
execute at @s run tag @e[tag=42.portal_temp,limit=1,sort=nearest,type=player] add 42.portal_selected
execute at @s run tag @e[tag=42.portal_temp,limit=1,sort=nearest,type=!player,tag=!42.portal_selgroup] add 42.portal_selected
tag @e remove 42.portal_temp
tag @e remove 42.portal_temp
tag @s add 42.portal_temp
execute at @s if loaded ~ ~ ~ if score @s 42.portal_lvl matches ..-1 run tag @s add 42.portal_tick
execute at @s if loaded ~ ~ ~ if score @s 42.portal_lvl matches 1.. as @a if score @s 42.portal_lvl = @e[tag=42.portal_temp,limit=1] 42.portal_lvl run tag @e[tag=42.portal_temp,limit=1] add 42.portal_tick
tag @s remove 42.portal_temp
execute if entity @s[tag=42.portal_tick] at @s run function 42:portal/level/do_tick
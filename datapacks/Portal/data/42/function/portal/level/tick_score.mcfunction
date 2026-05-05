tag @e remove 42.tag.portal.temp
tag @s add 42.tag.portal.temp
execute at @s if loaded ~ ~ ~ if score @s 42.obj.portal.lvl matches ..-1 run tag @s add 42.tag.portal.tick
execute at @s if loaded ~ ~ ~ if score @s 42.obj.portal.lvl matches 1.. as @a if score @s 42.obj.portal.lvl = @e[tag=42.tag.portal.temp,limit=1] 42.obj.portal.lvl run tag @e[tag=42.tag.portal.temp,limit=1] add 42.tag.portal.tick
tag @s remove 42.tag.portal.temp
execute if entity @s[tag=42.tag.portal.tick] at @s run function 42:portal/level/do_tick
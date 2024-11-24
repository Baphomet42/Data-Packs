rotate @s 0 0
execute at @s run function 42:portal/gun/valid_blocks
execute if score @s 42.obj.portal.col matches 18 run tag @s add 42.tag.portal.s
rotate @s 90 0
execute at @s unless entity @s[tag=42.tag.portal.s] run function 42:portal/gun/valid_blocks
execute unless entity @s[tag=42.tag.portal.s] if score @s 42.obj.portal.col matches 18 run tag @s add 42.tag.portal.w
rotate @s 180 0
execute at @s unless entity @s[tag=42.tag.portal.s] unless entity @s[tag=42.tag.portal.w] run function 42:portal/gun/valid_blocks
execute unless entity @s[tag=42.tag.portal.s] unless entity @s[tag=42.tag.portal.w] if score @s 42.obj.portal.col matches 18 run tag @s add 42.tag.portal.n
rotate @s -90 0
execute at @s unless entity @s[tag=42.tag.portal.s] unless entity @s[tag=42.tag.portal.w] unless entity @s[tag=42.tag.portal.n] run function 42:portal/gun/valid_blocks
execute unless entity @s[tag=42.tag.portal.s] unless entity @s[tag=42.tag.portal.w] unless entity @s[tag=42.tag.portal.n] if score @s 42.obj.portal.col matches 18 run tag @s add 42.tag.portal.e
rotate @s 0 -90
execute at @s unless entity @s[tag=42.tag.portal.s] unless entity @s[tag=42.tag.portal.w] unless entity @s[tag=42.tag.portal.n] unless entity @s[tag=42.tag.portal.e] run function 42:portal/gun/valid_blocks
execute unless entity @s[tag=42.tag.portal.s] unless entity @s[tag=42.tag.portal.w] unless entity @s[tag=42.tag.portal.n] unless entity @s[tag=42.tag.portal.e] if score @s 42.obj.portal.col matches 18 run tag @s add 42.tag.portal.floor
rotate @s 0 90
execute at @s unless entity @s[tag=42.tag.portal.s] unless entity @s[tag=42.tag.portal.w] unless entity @s[tag=42.tag.portal.n] unless entity @s[tag=42.tag.portal.e] unless entity @s[tag=42.tag.portal.floor] run function 42:portal/gun/valid_blocks
execute unless entity @s[tag=42.tag.portal.s] unless entity @s[tag=42.tag.portal.w] unless entity @s[tag=42.tag.portal.n] unless entity @s[tag=42.tag.portal.e] unless entity @s[tag=42.tag.portal.floor] if score @s 42.obj.portal.col matches 18 run tag @s add 42.tag.portal.ceiling

execute unless entity @s[tag=!42.tag.portal.s,tag=!42.tag.portal.w,tag=!42.tag.portal.n,tag=!42.tag.portal.e,tag=!42.tag.portal.floor,tag=!42.tag.portal.ceiling] at @s align xyz positioned ~.5 ~ ~.5 run function 42:portal/portal/spawn
kill @s[type=marker]
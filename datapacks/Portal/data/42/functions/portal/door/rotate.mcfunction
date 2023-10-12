tag @s remove 42.portal_temp
execute if score @s 42.portal_x matches 1 if block ~ ~ ~-1 air if block ~ ~1 ~-1 air if block ~ ~2 ~-1 air if block ~ ~ ~1 air if block ~ ~1 ~1 air if block ~ ~2 ~1 air run tag @s add 42.portal_temp
execute if score @s 42.portal_x matches 2 if block ~-1 ~ ~ air if block ~-1 ~1 ~ air if block ~-1 ~2 ~ air if block ~1 ~ ~ air if block ~1 ~1 ~ air if block ~1 ~2 ~ air run tag @s add 42.portal_temp
execute if entity @s[tag=42.portal_temp] run function 42:portal/door/rotate2
tag @s remove 42.portal_temp
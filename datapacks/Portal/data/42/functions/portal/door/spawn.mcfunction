tag @s remove 42.portal_temp1
tag @s remove 42.portal_temp2
execute if block ~ ~ ~ air if block ~ ~1 ~ air if block ~ ~2 ~ air if block ~1 ~ ~ air if block ~1 ~1 ~ air if block ~1 ~2 ~ air if block ~-1 ~ ~ air if block ~-1 ~1 ~ air if block ~-1 ~2 ~ air run tag @s add 42.portal_temp1
execute if block ~ ~ ~ air if block ~ ~1 ~ air if block ~ ~2 ~ air if block ~ ~ ~1 air if block ~ ~1 ~1 air if block ~ ~2 ~1 air if block ~ ~ ~-1 air if block ~ ~1 ~-1 air if block ~ ~2 ~-1 air run tag @s add 42.portal_temp2
execute if entity @s[tag=42.portal_temp1] run function 42:portal/door/spawn2
execute if entity @s[tag=42.portal_temp2,tag=!42.portal_temp1] run function 42:portal/door/spawn2
tag @s remove 42.portal_temp1
tag @s remove 42.portal_temp2
kill @s[type=area_effect_cloud]
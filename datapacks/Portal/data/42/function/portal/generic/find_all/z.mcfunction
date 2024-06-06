execute as @e[tag=42.portal_test_x] run scoreboard players operation @e[tag=42.portal_test_y] 42.portal_u = @s 42.portal_y
execute as @e[tag=42.portal_test_y] at @s run function 42:portal/generic/find_all/y with storage 42:portal temp
scoreboard players remove @s 42.portal_u 1
execute at @s run tp @s ~ ~ ~1
execute at @s run tp @e[tag=42.portal_test_y] ~ ~ ~
execute if score @s 42.portal_u matches 0.. at @s run function 42:portal/generic/find_all/z
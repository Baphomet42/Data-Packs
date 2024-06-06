$execute at @s $(mode) block ~ ~ ~ $(block) run scoreboard players set @e[tag=42.portal_test] 42.portal_u -10
scoreboard players remove @s 42.portal_u 1
execute at @s run tp @s ~ ~1 ~
execute if score @s 42.portal_u matches 0.. at @s run function 42:portal/generic/test_range/y with storage 42:portal temp
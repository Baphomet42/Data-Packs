$execute at @s $(mode) block ~ ~ ~ $(block) run scoreboard players set @e[tag=42.tag.portal.test] 42.obj.portal.var.u -10
scoreboard players remove @s 42.obj.portal.var.u 1
execute at @s run tp @s ~ ~1 ~
execute if score @s 42.obj.portal.var.u matches 0.. at @s run function 42:portal/generic/test_range/y with storage 42:portal temp
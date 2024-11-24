execute as @e[tag=42.tag.portal.test.x] run scoreboard players operation @e[tag=42.tag.portal.test.y] 42.obj.portal.var.u = @s 42.obj.portal.var.y
execute as @e[tag=42.tag.portal.test.x] run scoreboard players operation @e[tag=42.tag.portal.test.z] 42.obj.portal.var.u = @s 42.obj.portal.var.z
execute as @e[tag=42.tag.portal.test.z] at @s run function 42:portal/generic/test_range/z
scoreboard players remove @s 42.obj.portal.var.u 1
execute at @s run tp @s ~1 ~ ~
execute at @s run tp @e[tag=42.tag.portal.test.y] ~ ~ ~
execute at @s run tp @e[tag=42.tag.portal.test.z] ~ ~ ~
execute if score @s 42.obj.portal.var.u matches 0.. at @s run function 42:portal/generic/test_range/x
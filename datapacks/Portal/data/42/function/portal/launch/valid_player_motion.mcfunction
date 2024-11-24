scoreboard players set @s 42.obj.portal.col 0

execute positioned ~ ~ ~-.25 run function 42:portal/generic/test_col
execute positioned ~ ~ ~.25 run function 42:portal/generic/test_col
execute positioned ~-.25 ~ ~ run function 42:portal/generic/test_col
execute positioned ~.25 ~ ~ run function 42:portal/generic/test_col

execute unless score @s 42.obj.portal.col matches 4 at @s align xz run tp @s ~.5 ~ ~.5
execute unless score @s 42.obj.portal.col matches 4 run scoreboard players set @s 42.obj.portal.cool -1
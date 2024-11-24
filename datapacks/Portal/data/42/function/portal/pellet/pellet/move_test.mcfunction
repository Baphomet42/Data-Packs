tag @s remove 42.tag.portal.pellet.valid

scoreboard players set @s 42.obj.portal.col 0
execute positioned ~ ~ ~ run function 42:portal/generic/test_col
execute positioned ~ ~ ~.5 run function 42:portal/generic/test_col
execute positioned ~ ~.5 ~ run function 42:portal/generic/test_col
execute positioned ~ ~.5 ~.5 run function 42:portal/generic/test_col
execute positioned ~.5 ~ ~ run function 42:portal/generic/test_col
execute positioned ~.5 ~ ~.5 run function 42:portal/generic/test_col
execute positioned ~.5 ~.5 ~ run function 42:portal/generic/test_col
execute positioned ~.5 ~.5 ~.5 run function 42:portal/generic/test_col

execute if score @s 42.obj.portal.col matches 8 run tag @s add 42.tag.portal.pellet.valid
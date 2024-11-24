scoreboard players set @s 42.obj.portal.col 0

execute positioned ~.25 ~.25 ~.25 run function 42:portal/generic/test_col
execute positioned ~.25 ~.25 ~.75 run function 42:portal/generic/test_col
execute positioned ~.25 ~.75 ~.25 run function 42:portal/generic/test_col
execute positioned ~.25 ~.75 ~.75 run function 42:portal/generic/test_col
execute positioned ~.75 ~.25 ~.25 run function 42:portal/generic/test_col
execute positioned ~.75 ~.25 ~.75 run function 42:portal/generic/test_col
execute positioned ~.75 ~.75 ~.25 run function 42:portal/generic/test_col
execute positioned ~.75 ~.75 ~.75 run function 42:portal/generic/test_col

execute if score @s 42.obj.portal.col matches 8 run scoreboard players add @s 42.obj.portal.temp 1
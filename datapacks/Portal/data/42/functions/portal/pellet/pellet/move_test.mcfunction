tag @s remove 42.portal_pellet_valid
#
scoreboard players set @s 42.portal_col 0
execute positioned ~ ~ ~ run function 42:portal/generic/test_col
execute positioned ~ ~ ~.5 run function 42:portal/generic/test_col
execute positioned ~ ~.5 ~ run function 42:portal/generic/test_col
execute positioned ~ ~.5 ~.5 run function 42:portal/generic/test_col
execute positioned ~.5 ~ ~ run function 42:portal/generic/test_col
execute positioned ~.5 ~ ~.5 run function 42:portal/generic/test_col
execute positioned ~.5 ~.5 ~ run function 42:portal/generic/test_col
execute positioned ~.5 ~.5 ~.5 run function 42:portal/generic/test_col
#
execute if score @s 42.portal_col matches 8 run tag @s add 42.portal_pellet_valid
scoreboard players set @s 42.portal_col 0
tag @s remove 42.portal_gun_valid
function 42:portal/generic/test_col
execute if score @s 42.portal_col matches 1 run tag @s add 42.portal_gun_valid
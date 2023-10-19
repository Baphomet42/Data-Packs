tag @s remove 42.portal_turret_laser_valid
scoreboard players set @s 42.portal_col 0
function 42:portal/generic/test_col
execute if score @s 42.portal_col matches 1 run tag @s add 42.portal_turret_laser_valid
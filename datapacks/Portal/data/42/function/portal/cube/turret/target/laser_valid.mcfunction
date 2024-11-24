tag @s remove 42.tag.portal.turret.laser_valid
scoreboard players set @s 42.obj.portal.col 0
function 42:portal/generic/test_col
execute if score @s 42.obj.portal.col matches 1 run tag @s add 42.tag.portal.turret.laser_valid
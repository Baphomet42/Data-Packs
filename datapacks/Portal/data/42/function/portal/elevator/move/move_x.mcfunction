function 42:portal/elevator/reset
$scoreboard players set @s 42.portal_xrot1 $(x)
function 42:portal/tag_id
execute if score @s 42.portal_xrot1 matches ..-1 at @s run function 42:portal/elevator/move/try_dec_y
execute if score @s 42.portal_xrot1 matches 1.. at @s run function 42:portal/elevator/move/try_inc_y
tag @e remove 42.portal_id
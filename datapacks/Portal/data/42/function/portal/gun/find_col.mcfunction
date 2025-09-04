scoreboard players set @s 42.obj.portal.col 0
tag @s remove 42.tag.portal.gun.valid
function 42:portal/generic/test_col
execute if score @s 42.obj.portal.col matches 1 run tag @s add 42.tag.portal.gun.valid

execute at @s run function 42:portal/generic/entity_col/test_1p
execute unless entity @e[limit=1,tag=42.tag.portal.grill.hit,scores={42.obj.portal.col=2}] run return 1
particle block{block_state:{Name:light_blue_stained_glass}} ~ ~ ~ .1 .2 .1 0 15 force
particle bubble_pop ~ ~ ~ .1 .2 .1 0 15 force
particle flash{color:[1,1,1,1]} ~ ~ ~ 0 0 0 0 1 force
tag @s remove 42.tag.portal.gun.valid
tag @s add 42.tag.portal.gun.killed
kill @s
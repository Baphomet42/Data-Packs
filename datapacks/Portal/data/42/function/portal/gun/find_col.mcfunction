scoreboard players set @s 42.obj.portal.col 0
tag @s remove 42.tag.portal.gun.valid
function 42:portal/generic/test_col
execute if score @s 42.obj.portal.col matches 1 run tag @s add 42.tag.portal.gun.valid

execute at @s run function 42:portal/generic/entity_col/test_1p
execute if entity @e[tag=42.tag.portal.grill.hit,scores={42.obj.portal.col=2}] run particle block{block_state:{Name:light_blue_stained_glass}} ~ ~ ~ 0 0 0 0 1 force
execute if entity @e[tag=42.tag.portal.grill.hit,scores={42.obj.portal.col=2}] run kill @s
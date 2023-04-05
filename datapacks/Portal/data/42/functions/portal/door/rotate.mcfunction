function 42:portal/tag_id
execute as @e[tag=42.portal_id,tag=42.portal_door_group] at @s run tp @s ~ ~ ~ ~90 ~
execute if score @s 42.portal_x matches 1 run fill ~-1 ~ ~ ~1 ~2 ~ air
execute if score @s 42.portal_x matches 2 run fill ~ ~ ~-1 ~ ~2 ~1 air
execute if score @s 42.portal_x matches 1 run scoreboard players set @s 42.portal_x 3
execute if score @s 42.portal_x matches 2 run scoreboard players set @s 42.portal_x 1
execute if score @s 42.portal_x matches 3 run scoreboard players set @s 42.portal_x 2
execute if score @s 42.portal_x matches 1 run fill ~-1 ~ ~ ~1 ~2 ~ polished_blackstone_wall
execute if score @s 42.portal_x matches 2 run fill ~ ~ ~-1 ~ ~2 ~1 polished_blackstone_wall
function 42:portal/door/unpower
tag @e remove 42.portal_id
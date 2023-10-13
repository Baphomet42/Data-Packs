scoreboard players operation @s 42.portal_temp = @s 42.portal_x
scoreboard players operation @s 42.portal_x = @s 42.portal_z
scoreboard players operation @s 42.portal_z = @s 42.portal_temp
#
function 42:portal/tag_id
execute as @e[tag=42.portal_launcher,tag=42.portal_id] at @s run tp @s ~ ~ ~ ~90 ~
tag @e remove 42.portal_id
#
scoreboard players set @s 42.portal_temp -1
execute if entity @s[y_rotation=0] run scoreboard players operation @s 42.portal_x *= @s 42.portal_temp
execute if entity @s[y_rotation=90] run scoreboard players operation @s 42.portal_x *= @s 42.portal_temp
execute if entity @s[y_rotation=180] run scoreboard players operation @s 42.portal_x *= @s 42.portal_temp
execute if entity @s[y_rotation=-90] run scoreboard players operation @s 42.portal_x *= @s 42.portal_temp
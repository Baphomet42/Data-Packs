scoreboard players operation @s 42.portal_temp = @s 42.portal_x
scoreboard players operation @s 42.portal_x = @s 42.portal_z
scoreboard players operation @s 42.portal_z = @s 42.portal_temp
scoreboard players set @s 42.portal_temp -1
execute if entity @s[y_rotation=0] run scoreboard players operation @s 42.portal_x *= @s 42.portal_temp
execute if entity @s[y_rotation=90] run scoreboard players operation @s 42.portal_x *= @s 42.portal_temp
execute if entity @s[y_rotation=180] run scoreboard players operation @s 42.portal_x *= @s 42.portal_temp
execute if entity @s[y_rotation=-90] run scoreboard players operation @s 42.portal_x *= @s 42.portal_temp
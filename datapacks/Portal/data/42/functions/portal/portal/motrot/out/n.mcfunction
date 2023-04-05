scoreboard players set @s 42.portal_x 0
scoreboard players set @s 42.portal_y 0
scoreboard players operation @s 42.portal_z = 42.portal 42.portal_temp
scoreboard players operation @s 42.portal_z *= 42.portal_const_n1 42.portal_id
execute store result entity @s Motion[0] double .001 run scoreboard players get @s 42.portal_x
execute store result entity @s Motion[1] double .001 run scoreboard players get @s 42.portal_y
execute store result entity @s Motion[2] double .001 run scoreboard players get @s 42.portal_z
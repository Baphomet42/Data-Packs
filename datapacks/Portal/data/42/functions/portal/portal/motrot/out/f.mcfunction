scoreboard players set @s 42.portal_x 0
scoreboard players operation @s 42.portal_y = 42.portal 42.portal_temp
scoreboard players set @s 42.portal_z 0
execute store result entity @s Motion[0] double .001 run scoreboard players get @s 42.portal_x
execute store result entity @s Motion[1] double .001 run scoreboard players get @s 42.portal_y
execute store result entity @s Motion[2] double .001 run scoreboard players get @s 42.portal_z
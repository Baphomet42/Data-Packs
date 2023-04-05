execute if entity @s[type=armor_stand] run function 42:portal/motion_player
execute if entity @s[type=!armor_stand] run function 42:portal/motion_entity
execute if entity @s[nbt={OnGround:0b}] store result score 42.portal 42.portal_temp run data get entity @s Motion[1] 1000
execute if entity @s[nbt={OnGround:0b}] if score 42.portal 42.portal_temp matches ..-100 run scoreboard players operation @s 42.portal_y = 42.portal 42.portal_temp
execute if entity @s[nbt={OnGround:0b}] if score 42.portal 42.portal_temp matches 100.. run scoreboard players operation @s 42.portal_y = 42.portal 42.portal_temp
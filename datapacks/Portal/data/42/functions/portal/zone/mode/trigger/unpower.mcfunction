scoreboard players operation 42.portal_temp_unpower 42.portal_temp = @s 42.portal_xrot2
#
execute as @e[tag=42.portal_dropper,tag=42.portal_dropper_on] at @s if score @s 42.portal_link = 42.portal_temp_unpower 42.portal_temp run function 42:portal/dropper/unpower
execute as @e[tag=42.portal_wire] if score @s 42.portal_link = 42.portal_temp_unpower 42.portal_temp run function 42:portal/wire/unpower
execute as @e[tag=42.portal_door,tag=42.portal_door_on] at @s if score @s 42.portal_link = 42.portal_temp_unpower 42.portal_temp run function 42:portal/door/unpower
execute as @e[tag=42.portal_spawner] at @s if score @s 42.portal_link = 42.portal_temp_unpower 42.portal_temp run function 42:portal/portal/spawner/unpower
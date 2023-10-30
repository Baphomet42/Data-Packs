scoreboard players set 42.portal_temp_power 42.portal_temp -2
execute if score @s 42.portal_link matches 1.. run scoreboard players operation 42.portal_temp_power 42.portal_temp = @s 42.portal_link
#
execute as @e[tag=42.portal_wire] if score @s 42.portal_link = 42.portal_temp_power 42.portal_temp run function 42:portal/wire/power
execute as @e[tag=42.portal_door,tag=!42.portal_door_on] at @s if score @s 42.portal_link = 42.portal_temp_power 42.portal_temp run function 42:portal/door/power
execute as @e[tag=42.portal_spawner] at @s if score @s 42.portal_link = 42.portal_temp_power 42.portal_temp run function 42:portal/portal/spawner/power
execute as @e[tag=42.portal_cube_spawner] at @s if score @s 42.portal_link = 42.portal_temp_power 42.portal_temp run function 42:portal/cube/spawner/power
execute as @e[tag=42.portal_pellet_spawner] at @s if score @s 42.portal_link = 42.portal_temp_power 42.portal_temp run function 42:portal/pellet/spawner/power
#
execute unless entity @s[tag=42.portal_pedestal] as @e[tag=42.portal_dropper,tag=!42.portal_dropper_on] at @s if score @s 42.portal_link = 42.portal_temp_power 42.portal_temp run function 42:portal/dropper/power
execute if entity @s[tag=42.portal_pedestal] as @e[tag=42.portal_dropper] at @s if score @s 42.portal_link = 42.portal_temp_power 42.portal_temp run function 42:portal/dropper/drop
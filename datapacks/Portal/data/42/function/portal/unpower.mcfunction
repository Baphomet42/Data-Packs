scoreboard players set 42.portal_temp_unpower 42.portal_temp -2
execute if score @s 42.portal_link matches 1.. run scoreboard players operation 42.portal_temp_unpower 42.portal_temp = @s 42.portal_link
tag @e remove 42.portal_temp
execute as @e[tag=42.portal_btn_on] at @s if score @s 42.portal_link = 42.portal_temp_unpower 42.portal_temp run tag @s add 42.portal_temp
execute as @e[tag=42.portal_pellet_catcher_on] at @s if score @s 42.portal_link = 42.portal_temp_unpower 42.portal_temp run tag @s add 42.portal_temp
execute as @e[tag=42.portal_pedestal,scores={42.portal_time=2..}] at @s if score @s 42.portal_link = 42.portal_temp_unpower 42.portal_temp run tag @s add 42.portal_temp
scoreboard players set @s 42.portal_temp 0
execute at @e[tag=42.portal_temp] run scoreboard players add @s 42.portal_temp 1
tag @e remove 42.portal_temp
#
execute unless score @s 42.portal_temp matches 1.. as @e[tag=42.portal_dropper,tag=42.portal_dropper_on] at @s if score @s 42.portal_link = 42.portal_temp_unpower 42.portal_temp run function 42:portal/dropper/unpower
execute unless score @s 42.portal_temp matches 1.. as @e[tag=42.portal_wire] if score @s 42.portal_link = 42.portal_temp_unpower 42.portal_temp run function 42:portal/wire/unpower
execute unless score @s 42.portal_temp matches 1.. as @e[tag=42.portal_door,tag=42.portal_door_on] at @s if score @s 42.portal_link = 42.portal_temp_unpower 42.portal_temp run function 42:portal/door/unpower
#
execute unless score @s 42.portal_temp matches 1.. unless entity @s[tag=42.portal_pedestal] as @e[tag=42.portal_spawner] at @s if score @s 42.portal_link = 42.portal_temp_unpower 42.portal_temp run function 42:portal/portal/spawner/unpower
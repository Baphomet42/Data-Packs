scoreboard players set 42.portal 42.portal_temp -2
execute if score @s 42.portal_link matches 1.. run scoreboard players operation 42.portal 42.portal_temp = @s 42.portal_link
tag @e remove 42.portal_temp
execute as @e[tag=42.portal_btn_on] at @s if score @s 42.portal_link = 42.portal 42.portal_temp run tag @s add 42.portal_temp
execute as @e[tag=42.portal_pellet_catcher_on] at @s if score @s 42.portal_link = 42.portal 42.portal_temp run tag @s add 42.portal_temp
execute as @e[tag=42.portal_pedestal,scores={42.portal_time=2..}] at @s if score @s 42.portal_link = 42.portal 42.portal_temp run tag @s add 42.portal_temp
scoreboard players set @s 42.portal_temp 0
execute at @e[tag=42.portal_temp] run scoreboard players add @s 42.portal_temp 1
tag @e remove 42.portal_temp
#
execute unless score @s 42.portal_temp matches 1.. as @e[tag=42.portal_dropper,tag=42.portal_dropper_on] at @s if score @s 42.portal_link = 42.portal 42.portal_temp run function 42:portal/dropper/unpower
execute unless score @s 42.portal_temp matches 1.. as @e[tag=42.portal_wire,tag=!42.portal_wire_lbl] if score @s 42.portal_link = 42.portal 42.portal_temp run data modify entity @s block_state.Name set value light_blue_concrete
execute unless score @s 42.portal_temp matches 1.. as @e[tag=42.portal_wire,tag=42.portal_wire_lbl] if score @s 42.portal_link = 42.portal 42.portal_temp run data modify entity @s text set value '{"text":"\\u274C","color":"black"}'
execute unless score @s 42.portal_temp matches 1.. as @e[tag=42.portal_door,tag=42.portal_door_on] at @s if score @s 42.portal_link = 42.portal 42.portal_temp run function 42:portal/door/unpower
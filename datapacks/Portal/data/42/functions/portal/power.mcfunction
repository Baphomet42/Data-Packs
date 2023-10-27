scoreboard players set 42.portal_temp 42.portal_temp -2
execute if score @s 42.portal_link matches 1.. run scoreboard players operation 42.portal_temp 42.portal_temp = @s 42.portal_link
execute as @e[tag=42.portal_door,tag=!42.portal_door_on] at @s if score @s 42.portal_link = 42.portal_temp 42.portal_temp run function 42:portal/door/power
execute as @e[tag=42.portal_wire,tag=!42.portal_wire_lbl] if score @s 42.portal_link = 42.portal_temp 42.portal_temp run data modify entity @s block_state.Name set value orange_concrete
execute as @e[tag=42.portal_wire,tag=42.portal_wire_lbl] if score @s 42.portal_link = 42.portal_temp 42.portal_temp run data modify entity @s text set value '{"text":"\\u2714","color":"black"}'
execute if entity @s[tag=42.portal_btn] as @e[tag=42.portal_dropper,tag=!42.portal_dropper_on] at @s if score @s 42.portal_link = 42.portal_temp 42.portal_temp run function 42:portal/dropper/power
execute if entity @s[tag=42.portal_pellet_catcher] as @e[tag=42.portal_dropper,tag=!42.portal_dropper_on] at @s if score @s 42.portal_link = 42.portal_temp 42.portal_temp run function 42:portal/dropper/power
execute if entity @s[tag=42.portal_pedestal] as @e[tag=42.portal_dropper] at @s if score @s 42.portal_link = 42.portal_temp 42.portal_temp run function 42:portal/dropper/drop
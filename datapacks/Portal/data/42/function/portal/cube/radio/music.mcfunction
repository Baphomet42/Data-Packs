scoreboard players add 42.portal 42.portal_xrot1 1
execute if score 42.portal 42.portal_xrot1 matches 128.. run scoreboard players set 42.portal 42.portal_xrot1 0
#
scoreboard players operation @s 42.portal_xrot2 = 42.portal 42.portal_xrot1
scoreboard players set @s 42.portal_x 2
scoreboard players operation @s 42.portal_xrot2 %= @s 42.portal_x
#
execute if score @s 42.portal_xrot2 matches 0 at @e[tag=42.portal_radio,tag=42.portal_tick] run function 42:portal/cube/radio/loop/bit
execute if score @s 42.portal_xrot2 matches 0 at @e[tag=42.portal_radio,tag=42.portal_tick] run function 42:portal/cube/radio/loop/bass
execute if score @s 42.portal_xrot2 matches 0 at @e[tag=42.portal_radio,tag=42.portal_tick] run function 42:portal/cube/radio/loop/basedrum
execute if score @s 42.portal_xrot2 matches 0 at @e[tag=42.portal_radio,tag=42.portal_tick] run function 42:portal/cube/radio/loop/guitar
execute if entity @s[nbt={abilities:{flying:0b}}] if entity @e[tag=42.portal_tp1,scores={42.portal_y=0..}] run function 42:portal/portal/tp_player
execute if entity @s[nbt={abilities:{flying:0b}}] if entity @e[tag=42.portal_tp1,scores={42.portal_y=..-1}] run function 42:portal/portal/tp_player_air
execute if entity @s[nbt={abilities:{flying:1b}}] run function 42:portal/portal/tp_player_flying
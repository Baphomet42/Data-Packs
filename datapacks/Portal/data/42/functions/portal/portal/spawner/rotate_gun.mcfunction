scoreboard players set 42.portal_temp_rot 42.portal_temp -1
execute if entity @e[tag=42.portal_temp,tag=42.portal_nn] run scoreboard players set 42.portal_temp_rot 42.portal_temp 0
execute if entity @e[tag=42.portal_temp,tag=42.portal_ss] run scoreboard players set 42.portal_temp_rot 42.portal_temp 1
execute if entity @e[tag=42.portal_temp,tag=42.portal_ee] run scoreboard players set 42.portal_temp_rot 42.portal_temp 2
execute if entity @e[tag=42.portal_temp,tag=42.portal_ww] run scoreboard players set 42.portal_temp_rot 42.portal_temp 3
#
tag @e[tag=42.portal_temp] remove 42.portal_nn
tag @e[tag=42.portal_temp] remove 42.portal_ss
tag @e[tag=42.portal_temp] remove 42.portal_ee
tag @e[tag=42.portal_temp] remove 42.portal_ww
#
execute if score 42.portal_temp_rot 42.portal_temp matches 0 run tag @e[tag=42.portal_temp] add 42.portal_ss
execute if score 42.portal_temp_rot 42.portal_temp matches 1 run tag @e[tag=42.portal_temp] add 42.portal_nn
execute if score 42.portal_temp_rot 42.portal_temp matches 2 run tag @e[tag=42.portal_temp] add 42.portal_ww
execute if score 42.portal_temp_rot 42.portal_temp matches 3 run tag @e[tag=42.portal_temp] add 42.portal_ee
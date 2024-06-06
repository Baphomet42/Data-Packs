scoreboard players operation 42.portal 42.portal_temp = @s 42.portal_id
execute unless entity @s[type=player] run scoreboard players set 42.portal 42.portal_temp 0
execute if score 42.portal 42.portal_temp matches 1.. as @e[tag=42.portal_cube_tp] if score @s 42.portal_id = 42.portal 42.portal_temp at @s run function 42:portal/cube/fizzle
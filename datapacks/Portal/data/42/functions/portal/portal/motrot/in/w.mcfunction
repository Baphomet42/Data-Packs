scoreboard players operation 42.portal 42.portal_temp = @s 42.portal_x
execute unless score 42.portal 42.portal_temp matches 0.. run scoreboard players operation 42.portal 42.portal_temp *= 42.portal_const_n1 42.portal_id
execute if score 42.portal 42.portal_temp matches ..100 run scoreboard players set 42.portal 42.portal_temp 100
execute if score 42.portal 42.portal_temp matches 3000.. run scoreboard players set 42.portal 42.portal_temp 3000
execute if entity @e[tag=42.portal_tp2,scores={42.portal_y=0,42.portal_x=0}] run function 42:portal/portal/motrot/out/s
execute if entity @e[tag=42.portal_tp2,scores={42.portal_y=0,42.portal_x=1}] run function 42:portal/portal/motrot/out/w
execute if entity @e[tag=42.portal_tp2,scores={42.portal_y=0,42.portal_x=2}] run function 42:portal/portal/motrot/out/n
execute if entity @e[tag=42.portal_tp2,scores={42.portal_y=0,42.portal_x=3}] run function 42:portal/portal/motrot/out/e
execute if entity @e[tag=42.portal_tp2,scores={42.portal_y=-2}] run function 42:portal/portal/motrot/out/f
execute if entity @e[tag=42.portal_tp2,scores={42.portal_y=2}] run function 42:portal/portal/motrot/out/c
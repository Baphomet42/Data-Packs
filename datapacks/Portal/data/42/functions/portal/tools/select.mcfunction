tag @e remove 42.portal_temp
tag @e remove 42.portal_temp1
tag @e remove 42.portal_temp2
tag @e remove 42.portal_sel_p
tag @p add 42.portal_sel_p
#
tag @e[tag=42.portal_cube_tp,distance=..2.5] add 42.portal_temp
tag @e[tag=42.portal_launch,distance=..2.5] add 42.portal_temp
tag @e[tag=42.portal_btn,distance=..2.5] add 42.portal_temp
tag @e[tag=42.portal_pedestal,distance=..2.5] add 42.portal_temp
tag @e[tag=42.portal_door,distance=..2.5] add 42.portal_temp
tag @e[tag=42.portal_dropper,distance=..2.5] add 42.portal_temp
tag @e[tag=42.portal,distance=..2.5] add 42.portal_temp
tag @e[tag=42.portal_pellet_catcher,distance=..2.5] add 42.portal_temp
tag @e[tag=42.portal_pellet_emitter,distance=..2.5] add 42.portal_temp
tag @e[tag=42.portal_pellet,distance=..2.5] add 42.portal_temp
tag @e[tag=42.portal_elevator,distance=..3.5] add 42.portal_temp
tag @e[tag=42.portal_elevator_start,distance=..3.5] add 42.portal_temp
tag @e[tag=42.portal_elevator_selgroup,distance=..3.5] add 42.portal_temp
#
tag @e[tag=42.portal_temp,limit=1,sort=nearest] add 42.portal_temp2
tag @e remove 42.portal_temp
#
title @p[tag=42.portal_sel_p] actionbar ""
execute as @e[tag=42.portal_temp2] if score @s 42.portal_sel = @e[tag=42.portal_sel_p,limit=1] 42.portal_sel run tag @s add 42.portal_temp1
tag @e[tag=42.portal_temp1] remove 42.portal_temp2
scoreboard players set @e[tag=42.portal_sel_p,limit=1] 42.portal_sel 0
execute if entity @e[tag=42.portal_temp2] run scoreboard players add 42.portal 42.portal_sel 1
execute if entity @e[tag=42.portal_temp2] run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 2 1.4
execute if entity @e[tag=42.portal_temp2] run scoreboard players operation @e[tag=42.portal_temp2] 42.portal_sel = 42.portal 42.portal_sel
execute if entity @e[tag=42.portal_temp2] run scoreboard players operation @e[tag=42.portal_sel_p,limit=1] 42.portal_sel = 42.portal 42.portal_sel
execute if entity @e[tag=42.portal_temp1] run scoreboard players operation @e[tag=42.portal_sel_p,limit=1] 42.portal_sel = @e[tag=42.portal_temp1,limit=1] 42.portal_sel
execute as @e[tag=42.portal_temp2,tag=!42.portal_selgroup] at @s run function 42:portal/tools/sel_new
execute as @e[tag=42.portal_temp1,tag=!42.portal_selgroup] at @s run function 42:portal/tools/sel_new
execute as @e[tag=42.portal_temp2,tag=42.portal_selgroup] at @s run function 42:portal/tools/sel_group
execute as @e[tag=42.portal_temp1,tag=42.portal_selgroup] at @s run function 42:portal/tools/sel_group
#
tag @e remove 42.portal_temp1
tag @e remove 42.portal_temp2
tag @e remove 42.portal_sel_p
kill @s[type=area_effect_cloud]
execute if score 42.portal 42.portal_sel matches 2000000000.. run tellraw @a {"text":"42datapack error (3): [sel] overflow warning","color":"red"}
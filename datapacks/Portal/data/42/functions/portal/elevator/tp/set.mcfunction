function 42:portal/elevator/tp/remove
tag @e remove 42.portal_elevator_pair
execute as @p[tag=42.portal_selected] at @s run tag @e[tag=42.portal_elevator_start,limit=1,sort=nearest,tag=!42.portal_id,distance=..4] add 42.portal_elevator_pair
execute if entity @e[tag=42.portal_elevator_pair] run tag @s add 42.portal_elevator_tp
execute store result score @s 42.portal_u run data get entity @e[tag=42.portal_elevator_pair,limit=1] Pos[0]
execute store result score @s 42.portal_v run data get entity @e[tag=42.portal_elevator_pair,limit=1] Pos[1]
execute store result score @s 42.portal_w run data get entity @e[tag=42.portal_elevator_pair,limit=1] Pos[2]
scoreboard players operation @s 42.portal_xrot2 = @e[tag=42.portal_elevator_pair,limit=1] 42.portal_id
#
scoreboard players operation @s 42.portal_yrot2 = @s 42.portal_yrot1
scoreboard players operation @s 42.portal_yrot2 -= @e[tag=42.portal_elevator_pair,limit=1] 42.portal_yrot1
execute if score @s 42.portal_yrot2 matches ..-1 run scoreboard players add @s 42.portal_yrot2 4
#
execute as @e[tag=42.portal_elevator_pair] at @s run particle flash ~ ~1.5 ~
execute as @e[tag=42.portal_elevator_pair] at @s run playsound block.note_block.pling block @a ~ ~ ~ 1 1.25
execute unless entity @e[tag=42.portal_elevator_pair] run title @p[tag=42.portal_selected] title ""
execute unless entity @e[tag=42.portal_elevator_pair] run title @p[tag=42.portal_selected] subtitle {"text":"No elevator in range","color":"red"}
tag @e remove 42.portal_elevator_pair
execute if score @s 42.portal_w matches 1.. run particle flash
execute if score @s 42.portal_w matches 1.. run playsound block.note_block.snare hostile @a ~ ~ ~ 2 1.5
execute if score @s 42.portal_w matches 1 run function 42:portal/cube/turret/deactivate
scoreboard players remove @s 42.portal_w 1
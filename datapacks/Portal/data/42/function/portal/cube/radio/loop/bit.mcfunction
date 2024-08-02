scoreboard players operation @s 42.portal_xrot1 = 42.portal 42.portal_xrot1
scoreboard players set @s 42.portal_x 8
scoreboard players operation @s 42.portal_xrot1 %= @s 42.portal_x

execute if score @s 42.portal_xrot1 matches 0 run playsound block.note_block.bit record @a ~ ~ ~ .5 1
execute if score @s 42.portal_xrot1 matches 2 run playsound block.note_block.bit record @a ~ ~ ~ .5 1.189207
execute if score @s 42.portal_xrot1 matches 4 run playsound block.note_block.bit record @a ~ ~ ~ .5 1.587401
execute if score @s 42.portal_xrot1 matches 6 run playsound block.note_block.bit record @a ~ ~ ~ .5 1.189207
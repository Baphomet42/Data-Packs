scoreboard players operation @s 42.portal_xrot1 = 42.portal 42.portal_xrot1
scoreboard players set @s 42.portal_x 64
scoreboard players operation @s 42.portal_xrot1 %= @s 42.portal_x
#
execute if score @s 42.portal_xrot1 matches 0 run playsound block.note_block.bass record @a ~ ~ ~ .75 .890899
execute if score @s 42.portal_xrot1 matches 8 run playsound block.note_block.bass record @a ~ ~ ~ .75 1
execute if score @s 42.portal_xrot1 matches 16 run playsound block.note_block.bass record @a ~ ~ ~ .75 1.059463
execute if score @s 42.portal_xrot1 matches 22 run playsound block.note_block.bass record @a ~ ~ ~ .75 1.334840
execute if score @s 42.portal_xrot1 matches 26 run playsound block.note_block.bass record @a ~ ~ ~ .75 1.334840
execute if score @s 42.portal_xrot1 matches 28 run playsound block.note_block.bass record @a ~ ~ ~ .75 1.189207
execute if score @s 42.portal_xrot1 matches 32 run playsound block.note_block.bass record @a ~ ~ ~ .75 1
execute if score @s 42.portal_xrot1 matches 40 run playsound block.note_block.bass record @a ~ ~ ~ .75 1.059463
execute if score @s 42.portal_xrot1 matches 48 run playsound block.note_block.bass record @a ~ ~ ~ .75 1.189207
execute if score @s 42.portal_xrot1 matches 54 run playsound block.note_block.bass record @a ~ ~ ~ .75 1.334840
execute if score @s 42.portal_xrot1 matches 58 run playsound block.note_block.bass record @a ~ ~ ~ .75 1.334840
execute if score @s 42.portal_xrot1 matches 60 run playsound block.note_block.bass record @a ~ ~ ~ .75 1.189207
scoreboard players operation #music_calc 42.portal_id = #music_time 42.portal_id
scoreboard players operation #music_calc 42.portal_id %= #num_8 42.portal_const

execute if score #music_calc 42.portal_id matches 0 at @e[tag=42.portal_radio] run return run playsound block.note_block.bit record @a ~ ~ ~ .33 1
execute if score #music_calc 42.portal_id matches 2 at @e[tag=42.portal_radio] run return run playsound block.note_block.bit record @a ~ ~ ~ .33 1.189207
execute if score #music_calc 42.portal_id matches 4 at @e[tag=42.portal_radio] run return run playsound block.note_block.bit record @a ~ ~ ~ .33 1.587401
execute if score #music_calc 42.portal_id matches 6 at @e[tag=42.portal_radio] run return run playsound block.note_block.bit record @a ~ ~ ~ .33 1.189207
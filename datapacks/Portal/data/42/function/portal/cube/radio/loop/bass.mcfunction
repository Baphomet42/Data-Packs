scoreboard players operation #42.var.portal.music_calc 42.obj.portal.vars = #42.var.portal.music_time 42.obj.portal.vars
scoreboard players operation #42.var.portal.music_calc 42.obj.portal.vars %= #42.var.gen.const.64 42.obj.portal.vars

execute if score #42.var.portal.music_calc 42.obj.portal.vars matches 0 at @e[tag=42.tag.portal.radio] run return run playsound block.note_block.bass record @a ~ ~ ~ .75 .890899
execute if score #42.var.portal.music_calc 42.obj.portal.vars matches 8 at @e[tag=42.tag.portal.radio] run return run playsound block.note_block.bass record @a ~ ~ ~ .75 1
execute if score #42.var.portal.music_calc 42.obj.portal.vars matches 16 at @e[tag=42.tag.portal.radio] run return run playsound block.note_block.bass record @a ~ ~ ~ .75 1.059463
execute if score #42.var.portal.music_calc 42.obj.portal.vars matches 22 at @e[tag=42.tag.portal.radio] run return run playsound block.note_block.bass record @a ~ ~ ~ .75 1.334840
execute if score #42.var.portal.music_calc 42.obj.portal.vars matches 26 at @e[tag=42.tag.portal.radio] run return run playsound block.note_block.bass record @a ~ ~ ~ .75 1.334840
execute if score #42.var.portal.music_calc 42.obj.portal.vars matches 28 at @e[tag=42.tag.portal.radio] run return run playsound block.note_block.bass record @a ~ ~ ~ .75 1.189207
execute if score #42.var.portal.music_calc 42.obj.portal.vars matches 32 at @e[tag=42.tag.portal.radio] run return run playsound block.note_block.bass record @a ~ ~ ~ .75 1
execute if score #42.var.portal.music_calc 42.obj.portal.vars matches 40 at @e[tag=42.tag.portal.radio] run return run playsound block.note_block.bass record @a ~ ~ ~ .75 1.059463
execute if score #42.var.portal.music_calc 42.obj.portal.vars matches 48 at @e[tag=42.tag.portal.radio] run return run playsound block.note_block.bass record @a ~ ~ ~ .75 1.189207
execute if score #42.var.portal.music_calc 42.obj.portal.vars matches 54 at @e[tag=42.tag.portal.radio] run return run playsound block.note_block.bass record @a ~ ~ ~ .75 1.334840
execute if score #42.var.portal.music_calc 42.obj.portal.vars matches 58 at @e[tag=42.tag.portal.radio] run return run playsound block.note_block.bass record @a ~ ~ ~ .75 1.334840
execute if score #42.var.portal.music_calc 42.obj.portal.vars matches 60 at @e[tag=42.tag.portal.radio] run return run playsound block.note_block.bass record @a ~ ~ ~ .75 1.189207
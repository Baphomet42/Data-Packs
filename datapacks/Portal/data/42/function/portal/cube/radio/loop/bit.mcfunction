scoreboard players operation #42.var.portal.music_calc 42.obj.portal.vars = #42.var.portal.music_time 42.obj.portal.vars
scoreboard players operation #42.var.portal.music_calc 42.obj.portal.vars %= #42.var.gen.const.8 42.obj.portal.vars

execute if score #42.var.portal.music_calc 42.obj.portal.vars matches 0 at @e[tag=42.tag.portal.radio] run return run playsound block.note_block.bit record @a ~ ~ ~ .33 1
execute if score #42.var.portal.music_calc 42.obj.portal.vars matches 2 at @e[tag=42.tag.portal.radio] run return run playsound block.note_block.bit record @a ~ ~ ~ .33 1.189207
execute if score #42.var.portal.music_calc 42.obj.portal.vars matches 4 at @e[tag=42.tag.portal.radio] run return run playsound block.note_block.bit record @a ~ ~ ~ .33 1.587401
execute if score #42.var.portal.music_calc 42.obj.portal.vars matches 6 at @e[tag=42.tag.portal.radio] run return run playsound block.note_block.bit record @a ~ ~ ~ .33 1.189207
scoreboard players add #42.var.portal.music_time 42.obj.portal.vars 1
execute if score #42.var.portal.music_time 42.obj.portal.vars matches 128.. run scoreboard players set #42.var.portal.music_time 42.obj.portal.vars 0

scoreboard players operation #42.var.portal.music_calc 42.obj.portal.vars = #42.var.portal.music_time 42.obj.portal.vars
scoreboard players operation #42.var.portal.music_calc 42.obj.portal.vars %= #42.var.gen.const.2 42.obj.portal.vars

execute unless score #42.var.portal.music_calc 42.obj.portal.vars matches 0 run return 0

function 42:portal/cube/radio/loop/bit
function 42:portal/cube/radio/loop/bass
function 42:portal/cube/radio/loop/basedrum
function 42:portal/cube/radio/loop/guitar
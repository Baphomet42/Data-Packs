scoreboard players add #music_time 42.portal_id 1
execute if score #music_time 42.portal_id matches 128.. run scoreboard players set #music_time 42.portal_id 0

scoreboard players operation #music_calc 42.portal_id = #music_time 42.portal_id
scoreboard players operation #music_calc 42.portal_id %= #num_2 42.portal_const

execute unless score #music_calc 42.portal_id matches 0 run return 0

function 42:portal/cube/radio/loop/bit
function 42:portal/cube/radio/loop/bass
function 42:portal/cube/radio/loop/basedrum
function 42:portal/cube/radio/loop/guitar
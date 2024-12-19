scoreboard players add @s 42.obj.src.gun.reload_time 1
execute if score @s 42.obj.src.gun.reload_time matches ..-1 run return 0

function 42:src/gun/reload_stop
function 42:src/gun/reload_start
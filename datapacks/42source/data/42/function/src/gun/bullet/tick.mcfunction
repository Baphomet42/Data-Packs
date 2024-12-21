scoreboard players add @s 42.obj.src.time 1
execute if score @s 42.obj.src.time matches 60.. run return run kill @s

execute if items entity @s contents *[custom_data~{42data:{src:{gun:{flags:{large_bullet:{}}}}}}] run return run function 42:src/gun/bullet/tick_large
function 42:src/gun/bullet/tick_small
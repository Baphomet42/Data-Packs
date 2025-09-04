scoreboard players remove @s 42.obj.posers.temp_profile_fix 1
execute if score @s 42.obj.posers.temp_profile_fix matches 1.. run return fail

data modify entity @s profile set from entity @s data.temp_profile_fix
data remove entity @s data.temp_profile_fix
scoreboard players reset @s 42.obj.posers.temp_profile_fix
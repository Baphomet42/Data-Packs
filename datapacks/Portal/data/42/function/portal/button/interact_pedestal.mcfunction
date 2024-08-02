execute if entity @s[tag=42.portal_pedestal] run scoreboard players operation @s 42.portal_time = @s 42.portal_x
playsound minecraft:block.lever.click block @a ~ ~ ~ 1 .6
data merge entity @e[tag=42.portal_id,tag=42.portal_pedestal_dis,limit=1] {transformation:{translation:[-.15f,.95f,-.15f]},interpolation_duration:5,start_interpolation:-1}
data merge entity @e[tag=42.portal_id,tag=42.portal_pedestal_hit,limit=1] {response:0b}
data remove entity @e[tag=42.portal_id,tag=42.portal_pedestal_hit,limit=1] interaction
function 42:portal/power
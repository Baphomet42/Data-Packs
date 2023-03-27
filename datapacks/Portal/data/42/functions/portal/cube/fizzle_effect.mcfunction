scoreboard players add @s[tag=42.portal_cube_dis] 42.portal_time 1
data merge entity @s[scores={42.portal_time=1}] {brightness:{block:0,sky:0},transformation:{left_rotation:{angle:45f,axis:[1f,0f,0f]},right_rotation:{angle:30f,axis:[0f,1f,0f]},translation:[-.5f,1f,.1f]},interpolation_duration:30,start_interpolation:-1}
#tp @s ~-.02 ~.03 ~-.01 ~2 ~
kill @s[tag=42.portal_cube_dis,scores={42.portal_time=30..}]
scoreboard players add @s 42.portal_skin 1
execute unless score @s 42.portal_skin matches 0..1 run scoreboard players set @s 42.portal_skin 0
execute if score @s 42.portal_skin matches 0 run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.125f,-.125f,-.6875f],scale:[.25f,.25f,.25f]}}
execute if score @s 42.portal_skin matches 0 run data modify entity @e[tag=42.portal_wire_lbl,limit=1,sort=nearest,distance=...1] view_range set value 0f
execute if score @s 42.portal_skin matches 1 run data merge entity @s {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.375f,-.375f,-1.1875f],scale:[.75f,.75f,.75f]}}
execute if score @s 42.portal_skin matches 1 run data modify entity @e[tag=42.portal_wire_lbl,limit=1,sort=nearest,distance=...1] view_range set value 10f
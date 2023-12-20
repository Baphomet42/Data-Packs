tag @e remove 42.portal_new_spawn
execute align xyz positioned ~.5 ~.5 ~.5 run summon block_display ~ ~ ~ {Tags:["42.portal_wire","42.portal_new_spawn"],CustomNameVisible:0b,CustomName:'{"text":"Wire"}',block_state:{Name:light_blue_concrete},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.125f,-.125f,-.6875f],scale:[.25f,.25f,.25f]},Passengers:[{id:text_display,Tags:["42.portal_wire","42.portal_new_spawn","42.portal_wire_lbl"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":"\\u274C","color":"black"}',alignment:center,background:0,view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.05f,-.625f,-.4375f],scale:[3.75f,3.75f,3.75f]}}]}
scoreboard players operation @e[tag=42.portal_new_spawn] 42.portal_link = 42.portal 42.portal_link
execute at @e[tag=42.portal_new_spawn] rotated as @s run tp @e[tag=42.portal_new_spawn] ~ ~ ~ ~ ~
scoreboard players set @e[type=!player,tag=42.portal_new_spawn] 42.datapack 3
scoreboard players set @e[tag=42.portal_new_spawn] 42.portal_lvl -1
scoreboard players set @e[tag=42.portal_new_spawn,tag=!42.portal_wire_lbl] 42.portal_skin 0
execute at @s run function 42:portal/get_rot
execute if entity @s[tag=42.portal_rot_s] run scoreboard players set @e[tag=42.portal_new_spawn] 42.portal_z 0
execute if entity @s[tag=42.portal_rot_w] run scoreboard players set @e[tag=42.portal_new_spawn] 42.portal_z 1
execute if entity @s[tag=42.portal_rot_e] run scoreboard players set @e[tag=42.portal_new_spawn] 42.portal_z 2
execute if entity @s[tag=42.portal_rot_n] run scoreboard players set @e[tag=42.portal_new_spawn] 42.portal_z 3
execute if entity @s[tag=42.portal_rot_up] run scoreboard players set @e[tag=42.portal_new_spawn] 42.portal_z 4
execute if entity @s[tag=42.portal_rot_down] run scoreboard players set @e[tag=42.portal_new_spawn] 42.portal_z 5
function 42:portal/get_rot2
tag @e remove 42.portal_new_spawn
kill @s[tag=42.portal_wire_unlinked]
tag @s remove 42.portal_wire_unlinked
tag @e remove 42.portal_new_spawn
summon block_display ~ ~ ~ {Tags:["42.portal_new_spawn","42.portal_zone","42.portal_zone_group"],CustomNameVisible:0b,CustomName:'{"text":"Zone"}',block_state:{Name:ice},view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,0f,-1.5f],scale:[3f,3f,3f]},Passengers:[\
    {id:text_display,Tags:["42.portal_new_spawn","42.portal_zone_lbl","42.portal_zone_group"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":"Zone"}',see_through:true,billboard:vertical,view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.125f,0f],scale:[1f,1f,1f]}},\
    {id:text_display,Tags:["42.portal_new_spawn","42.portal_zone_lbl_lvl","42.portal_zone_group"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":""}',billboard:vertical,background:0,view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,.666f,0f],scale:[1f,1f,1f]}},\
    {id:text_display,Tags:["42.portal_new_spawn","42.portal_zone_lbl_cool","42.portal_zone_group"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":""}',billboard:vertical,background:0,view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[1f,1f,1f]}},\
    {id:text_display,Tags:["42.portal_new_spawn","42.portal_zone_lbl_extra","42.portal_zone_lbl_pow","42.portal_zone_group"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":""}',billboard:vertical,background:0,view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.333f,0f],scale:[1f,1f,1f]}},\
    {id:text_display,Tags:["42.portal_new_spawn","42.portal_zone_lbl_extra","42.portal_zone_lbl_unpow","42.portal_zone_group"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":""}',billboard:vertical,background:0,view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.666f,0f],scale:[1f,1f,1f]}},\
    {id:text_display,Tags:["42.portal_new_spawn","42.portal_zone_lbl_extra","42.portal_zone_lbl_spawn","42.portal_zone_group"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":""}',billboard:vertical,background:0,view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2f,0f],scale:[1f,1f,1f]}},\
    {id:text_display,Tags:["42.portal_new_spawn","42.portal_zone_lbl_extra","42.portal_zone_lbl_fizzle","42.portal_zone_group"],CustomNameVisible:0b,CustomName:'{"text":"42portal"}',text:'{"text":""}',billboard:vertical,background:0,view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,2.333f,0f],scale:[1f,1f,1f]}}]}
execute as @e[tag=42.portal_new_spawn,tag=42.portal_zone,limit=1] run function 42:portal/new_id
scoreboard players operation @e[tag=42.portal_new_spawn] 42.portal_id = @e[tag=42.portal_new_spawn,tag=42.portal_zone,limit=1] 42.portal_id
scoreboard players set @e[type=!player,tag=42.portal_new_spawn] 42.datapack 3
scoreboard players set @e[tag=42.portal_new_spawn,tag=42.portal_zone] 42.portal_lvl -2
scoreboard players set @e[tag=42.portal_new_spawn,tag=42.portal_zone] 42.portal_xrot1 0
scoreboard players set @e[tag=42.portal_new_spawn,tag=42.portal_zone] 42.portal_xrot2 0
scoreboard players set @e[tag=42.portal_new_spawn,tag=42.portal_zone] 42.portal_yrot1 0
scoreboard players set @e[tag=42.portal_new_spawn,tag=42.portal_zone] 42.portal_yrot2 0
execute as @e[tag=42.portal_zone,tag=42.portal_new_spawn] at @s run function 42:portal/zone/mode {x:0}
execute as @e[tag=42.portal_zone,tag=42.portal_new_spawn] at @s run function 42:portal/zone/size {y:1}
execute as @e[tag=42.portal_zone,tag=42.portal_new_spawn] at @s run function 42:portal/zone/update
execute as @e[tag=42.portal_zone,tag=42.portal_new_spawn] at @s run function 42:portal/zone/show
tag @e remove 42.portal_new_spawn
kill @s[type=area_effect_cloud]
#
#   ====scores====
#   portal_lvl  must be set through sel menu
#   portal_x    zone type (0 for load, 1 for trigger)
#   portal_y    zone size (0 for 1x1x1, 1 for 3x3x3, 2 for 5x5x5)
#   portal_xrot1    link to power
#   portal_xrot2    link to unpower
#   portal_yrot1    link to spawn
#   portal_yrot2    link to fizzle spawn
#
#   =====tags=====
#   portal_zone     main tick
#   portal_zone_group   all zone elements to be fizzled together
#   portal_zone_show    if the zone can be seen (and fizzled with the fizzler tool)
#   portal_zone_cool    if the trigger zone should not tick
tag @e remove 42.tag.portal.new_spawn
summon block_display ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.new_spawn","42.tag.portal.zone","42.tag.portal.tags.has_tick","42.tag.portal.zone.group"],CustomNameVisible:0b,CustomName:'"Zone"',block_state:{Name:ice},view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,0f,-1.5f],scale:[3f,3f,3f]}}
execute as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.zone,limit=1] run function 42:portal/new_id
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.zone] 42.obj.portal.lvl -2
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.zone] 42.obj.portal.xrot1 0
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.zone] 42.obj.portal.xrot2 0
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.zone] 42.obj.portal.yrot1 0
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.zone] 42.obj.portal.yrot2 0
execute as @e[tag=42.tag.portal.zone,tag=42.tag.portal.new_spawn] at @s run function 42:portal/zone/mode {x:0}
execute as @e[tag=42.tag.portal.zone,tag=42.tag.portal.new_spawn] at @s run function 42:portal/zone/size {y:1}
execute as @e[tag=42.tag.portal.zone,tag=42.tag.portal.new_spawn] at @s run function 42:portal/zone/show
tag @e remove 42.tag.portal.new_spawn
kill @s[type=area_effect_cloud]

#   ====scores====
#   portal_lvl  must be set through sel menu
#   portal_x    zone type (0 for load, 1 for trigger)
#   portal_y    zone size (0 for 1x1x1, 1 for 3x3x3, 2 for 5x5x5)
#   portal_xrot1    link to power
#   portal_xrot2    link to unpower
#   portal_yrot1    link to spawn
#   portal_yrot2    link to fizzle spawn

#   =====tags=====
#   portal_zone     main tick
#   portal_zone_group   all zone elements to be fizzled together
#   portal_zone_show    if the zone can be seen (and fizzled with the fizzler tool)
#   portal_zone_cool    if the trigger zone should not tick
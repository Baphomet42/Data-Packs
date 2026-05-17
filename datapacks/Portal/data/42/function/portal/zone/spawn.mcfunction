tag @e remove 42.tag.portal.new_spawn
summon block_display ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.new_spawn","42.tag.portal.zone","42.tag.portal.tags.has_tick","42.tag.portal.zone.group"],CustomNameVisible:false,CustomName:"Zone",block_state:{Name:"minecraft:ice"},view_range:0f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,0f,-1.5f],scale:[3f,3f,3f]}}
execute as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.zone,limit=1] run function 42:portal/new_id
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.zone] 42.obj.portal.lvl -2
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.zone] 42.obj.portal.var.a 0
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.zone] 42.obj.portal.var.b 0
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.zone] 42.obj.portal.xrot1 0
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.zone] 42.obj.portal.xrot2 0
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.zone] 42.obj.portal.yrot1 0
scoreboard players set @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.zone] 42.obj.portal.yrot2 0
execute as @e[tag=42.tag.portal.zone,tag=42.tag.portal.new_spawn] at @s run function 42:portal/zone/mode {x:1}
execute as @e[tag=42.tag.portal.zone,tag=42.tag.portal.new_spawn] at @s run function 42:portal/zone/size {y:1}
execute as @e[tag=42.tag.portal.zone,tag=42.tag.portal.new_spawn] at @s run function 42:portal/zone/show
tag @e remove 42.tag.portal.new_spawn
kill @s[type=area_effect_cloud]

#   ====scores====
#   42.obj.portal.lvl           must be set through sel menu
#   42.obj.portal.x             zone type (0 for load, 1 for trigger)
#   42.obj.portal.y             zone size (0 for 1x1x1, 1 for 3x3x3, 2 for 5x5x5)
#   42.obj.portal.xrot1         link to power
#   42.obj.portal.xrot2         link to unpower
#   42.obj.portal.yrot1         link to spawn
#   42.obj.portal.yrot2         link to fizzle spawn

#   =====tags=====
#   42.tag.portal.zone          main tick
#   42.tag.portal.zone.group    all zone elements to be fizzled together
#   42.tag.portal.zone.show     if the zone can be seen (and fizzled with the fizzler tool)
#   42.tag.portal.zone.cool     if the trigger zone should not tick until the level is reloaded
#   42.tag.portal.zone.has_spawn    if the trigger zone should use yrot1 as an id to spawn
#   42.tag.portal.zone.has_fizzle   if the trigger zone should use yrot2 as an id to fizzle
#   42.tag.portal.zone.grill        if the trigger zone should fizzle portals of players who enter it
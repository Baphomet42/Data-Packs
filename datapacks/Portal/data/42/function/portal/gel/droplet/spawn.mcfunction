tag @e remove 42.tag.portal.new_spawn
summon item_display ~ ~.5 ~ {Tags:["42.tag.summon","42.tag.portal.gel","42.tag.portal.gel.droplet","42.tag.portal.tags.has_tick","42.tag.portal.new_spawn"],CustomNameVisible:false,CustomName:"Gel Droplet",item:{id:"minecraft:white_concrete"},view_range:10f,brightness:{block:15,sky:15},teleport_duration:1,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
scoreboard players set @e[tag=42.tag.portal.new_spawn] 42.obj.portal.var.x 0
scoreboard players set @e[tag=42.tag.portal.new_spawn] 42.obj.portal.var.y 0
scoreboard players set @e[tag=42.tag.portal.new_spawn] 42.obj.portal.var.z 0
scoreboard players set @e[tag=42.tag.portal.new_spawn] 42.obj.portal.time 0
scoreboard players set @e[tag=42.tag.portal.new_spawn] 42.obj.portal.cool 0
scoreboard players set @e[tag=42.tag.portal.new_spawn] 42.obj.portal.lvl -1
execute as @e[tag=42.tag.portal.new_spawn,limit=1] run function 42:portal/new_id
execute if entity @s[tag=42.tag.portal.vent.drop] run tag @e[tag=42.tag.portal.new_spawn] add 42.tag.portal.vent.drop
execute if entity @s[type=glow_item_frame] run tp @e[tag=42.tag.portal.new_spawn,limit=1] ^ ^ ^-.5
execute if entity @s[tag=42.tag.portal.gel.spawner] run function 42:portal/gel/spawner/config

function 42:portal/gel/droplet/get_type

tag @e remove 42.tag.portal.new_spawn
kill @s[type=area_effect_cloud]
kill @s[type=glow_item_frame]
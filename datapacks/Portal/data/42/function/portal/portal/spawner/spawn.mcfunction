tag @e remove 42.tag.portal.new_spawn
execute if entity @s[tag=42.tag.portal.portal] run summon block_display ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.portal.spawner","42.tag.portal.tags.has_tick","42.tag.portal.portal.spawner.group","42.tag.portal.new_spawn","42.tag.portal.is_spawner"],CustomNameVisible:false,CustomName:"Portal Spawner",block_state:{Name:"minecraft:iron_block"},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.9375f,-.875f,-.125f],scale:[.125f,2.25f,.125f]},Passengers:[{id:"minecraft:block_display",Tags:["42.tag.summon","42.tag.portal.portal.spawner.group","42.tag.portal.new_spawn"],CustomNameVisible:false,CustomName:"42portal",block_state:{Name:"minecraft:iron_block"},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[.8125f,-.875f,-.125f],scale:[.125f,2.25f,.125f]}},{id:"minecraft:block_display",Tags:["42.tag.summon","42.tag.portal.portal.spawner.group","42.tag.portal.new_spawn"],CustomNameVisible:false,CustomName:"42portal",block_state:{Name:"minecraft:light_blue_concrete"},view_range:10f,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.890625f,-.8125f,-.015625f],scale:[.03125f,2.125f,.03125f]}},{id:"minecraft:block_display",Tags:["42.tag.summon","42.tag.portal.portal.spawner.group","42.tag.portal.new_spawn"],CustomNameVisible:false,CustomName:"42portal",block_state:{Name:"minecraft:light_blue_concrete"},view_range:10f,brightness:{block:15,sky:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[.859375f,-.8125f,-.015625f],scale:[.03125f,2.125f,.03125f]}}]}
tp @e[tag=42.tag.portal.portal.spawner.group,tag=42.tag.portal.new_spawn,tag=42.tag.portal.portal.spawner] ^ ^ ^.625
execute as @e[tag=42.tag.portal.portal.spawner.group,tag=42.tag.portal.new_spawn] run rotate @s ~ ~

execute as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.portal.spawner,limit=1] run function 42:portal/new_id
scoreboard players operation @e[tag=42.tag.portal.new_spawn] 42.obj.portal.id = @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.portal.spawner,limit=1] 42.obj.portal.id
scoreboard players set @e[tag=42.tag.portal.portal.spawner,tag=42.tag.portal.new_spawn] 42.obj.portal.link -1
scoreboard players set @e[tag=42.tag.portal.portal.spawner,tag=42.tag.portal.new_spawn] 42.obj.portal.lvl -1
scoreboard players set @e[tag=42.tag.portal.portal.spawner,tag=42.tag.portal.new_spawn] 42.obj.portal.cool 100
scoreboard players set @e[tag=42.tag.portal.portal.spawner,tag=42.tag.portal.new_spawn] 42.obj.portal.var.u -1
scoreboard players set @e[tag=42.tag.portal.portal.spawner,tag=42.tag.portal.new_spawn] 42.obj.portal.var.v -1
scoreboard players operation @e[tag=42.tag.portal.portal.spawner,tag=42.tag.portal.new_spawn] 42.obj.portal.var.x = @s 42.obj.portal.skin
scoreboard players operation @e[tag=42.tag.portal.portal.spawner,tag=42.tag.portal.new_spawn] 42.obj.portal.var.y = @s 42.obj.portal.link
execute if entity @s[tag=42.tag.portal.portal,tag=42.tag.portal.portal.a] run tag @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.portal.spawner] add 42.tag.portal.gun.arg_a
execute if entity @s[tag=42.tag.portal.portal,tag=!42.tag.portal.portal.a] run tag @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.portal.spawner] add 42.tag.portal.gun.arg_b
execute if entity @s[tag=42.tag.portal.portal] run function 42:portal/portal/fizzle
#execute as @e[tag=42.tag.portal.new_spawn,tag=42.tag.portal.portal.spawner] at @s run function 42:portal/portal/spawner/power
tag @e remove 42.tag.portal.new_spawn
function 42:portal/tools/sel_summon

#   ====scores====
#   42.obj.portal.var.x     color of portal
#   42.obj.portal.var.y     portal link num
#   42.obj.portal.var.u     id of portal spawner to activate next in cycle
#   42.obj.portal.var.v     current timer instance before cycling to next portal spawner
#   42.obj.portal.cool      number of ticks to reset cycle timer to
#   42.obj.portal.link      frequency of powerable

#   =====tags=====
#   42.tag.portal.spawner           main tick entity
#   42.tag.portal.spawner.group     all entities in object
#   42.tag.portal.gun.arg_a         if portal type 0
#   42.tag.portal.gun.arg_b         if portal type 1
tag @e remove 42.tag.portal.temp
summon block_display ~ ~ ~ {Tags:["42.tag.portal.pedestal","42.tag.portal.tags.has_tick","42.tag.portal.pedestal.group","42.tag.portal.temp"],CustomNameVisible:0b,CustomName:'"Pedestal Button"',block_state:{Name:quartz_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.2f,0f,-.2f],scale:[.4f,1f,.4f]},Passengers:[{id:block_display,Tags:["42.tag.portal.pedestal.group","42.tag.portal.temp"],CustomNameVisible:0b,CustomName:'"42portal"',block_state:{Name:quartz_stairs},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.2f,1f,-.2f],scale:[.4f,.4f,.4f]}},{id:block_display,Tags:["42.tag.portal.pedestal.group","42.tag.portal.pedestal.dis","42.tag.portal.temp"],CustomNameVisible:0b,CustomName:'"42portal"',block_state:{Name:redstone_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-.15f,1.05f,-.15f],scale:[.3f,.3f,.3f]}}]}
summon interaction ~ ~1 ~ {width:.4,height:.4,response:1b,Tags:["42.tag.portal.pedestal.group","42.tag.portal.pedestal.hit","42.tag.portal.temp"]}
execute unless entity @s[tag=42.tag.portal.loader] as @e[tag=42.tag.portal.temp,tag=42.tag.portal.pedestal,limit=1] run function 42:portal/new_id
execute unless entity @s[tag=42.tag.portal.loader] run scoreboard players operation @e[tag=42.tag.portal.temp] 42.obj.portal.id = @e[tag=42.tag.portal.temp,tag=42.tag.portal.pedestal,limit=1] 42.obj.portal.id
scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.pedestal] 42.obj.portal.time 0
scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.pedestal] 42.obj.portal.var.x 50
scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.pedestal] 42.obj.portal.link -1
scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.pedestal] 42.obj.portal.lvl -1
scoreboard players set @e[type=!player,tag=42.tag.portal.temp] 42.obj.datapack 3
fill ~ ~ ~ ~ ~ ~ nether_brick_fence replace #42:portal/portal_replace

execute if entity @s[tag=42.tag.portal.tool.arg.rot] as @p at @s run function 42:portal/get_rot
execute if entity @s[tag=42.tag.portal.tool.arg.rot] if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.e] as @e[tag=42.tag.portal.temp,tag=42.tag.portal.pedestal] at @s run function 42:portal/button/rotate_pedestal
execute if entity @s[tag=42.tag.portal.tool.arg.rot] if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.s] as @e[tag=42.tag.portal.temp,tag=42.tag.portal.pedestal] at @s run function 42:portal/button/rotate_pedestal
execute if entity @s[tag=42.tag.portal.tool.arg.rot] if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.s] as @e[tag=42.tag.portal.temp,tag=42.tag.portal.pedestal] at @s run function 42:portal/button/rotate_pedestal
execute if entity @s[tag=42.tag.portal.tool.arg.rot] if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.w] as @e[tag=42.tag.portal.temp,tag=42.tag.portal.pedestal] at @s run function 42:portal/button/rotate_pedestal
execute if entity @s[tag=42.tag.portal.tool.arg.rot] if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.w] as @e[tag=42.tag.portal.temp,tag=42.tag.portal.pedestal] at @s run function 42:portal/button/rotate_pedestal
execute if entity @s[tag=42.tag.portal.tool.arg.rot] if entity @e[tag=42.tag.portal.rot,tag=42.tag.portal.rot.w] as @e[tag=42.tag.portal.temp,tag=42.tag.portal.pedestal] at @s run function 42:portal/button/rotate_pedestal
execute if entity @s[tag=42.tag.portal.tool.arg.rot] run function 42:portal/get_rot2

execute if entity @s[tag=42.tag.portal.loader] run function 42:portal/button/load_pedestal with storage 42:portal loader.temp_entity
tag @e remove 42.tag.portal.temp
kill @s[type=area_effect_cloud]
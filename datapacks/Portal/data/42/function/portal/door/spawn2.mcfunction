tag @e remove 42.tag.portal.temp
summon block_display ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.door","42.tag.portal.door.dis","42.tag.portal.door.group","42.tag.portal.temp"],CustomNameVisible:0b,CustomName:'"Door"',block_state:{Name:iron_block},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.25f,0f,-.3f],scale:[1.25f,2.75f,.6f]},Passengers:[{id:block_display,Tags:["42.tag.summon","42.tag.portal.door.dis","42.tag.portal.door.group","42.tag.portal.temp"],CustomNameVisible:0b,CustomName:'"42portal"',block_state:{Name:iron_block},view_range:10f,Rotation:[180f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.25f,0f,-.3f],scale:[1.25f,2.75f,.6f]}},{id:block_display,Tags:["42.tag.summon","42.tag.portal.door.group","42.tag.portal.temp"],CustomNameVisible:0b,CustomName:'"42portal"',block_state:{Name:polished_deepslate},view_range:10f,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,2.75f,-.375f],scale:[3f,.25f,.75f]}},{id:block_display,Tags:["42.tag.summon","42.tag.portal.door.group","42.tag.portal.temp"],CustomNameVisible:0b,CustomName:'"42portal"',block_state:{Name:polished_deepslate},view_range:10f,Rotation:[0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,0f,-.375f],scale:[.25f,2.75f,.75f]}},{id:block_display,Tags:["42.tag.summon","42.tag.portal.door.group","42.tag.portal.temp"],CustomNameVisible:0b,CustomName:'"42portal"',block_state:{Name:polished_deepslate},view_range:10f,Rotation:[180f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-1.5f,0f,-.375f],scale:[.25f,2.75f,.75f]}}]}
execute unless entity @s[tag=42.tag.portal.loader] as @e[tag=42.tag.portal.temp,tag=42.tag.portal.door,limit=1] run function 42:portal/new_id
execute unless entity @s[tag=42.tag.portal.loader] run scoreboard players operation @e[tag=42.tag.portal.temp] 42.obj.portal.id = @e[tag=42.tag.portal.temp,tag=42.tag.portal.door,limit=1] 42.obj.portal.id
scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.door] 42.obj.portal.link -1
scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.door] 42.obj.portal.lvl -1

scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.door] 42.obj.portal.var.x 1
execute if entity @s[tag=42.tag.portal.temp2,tag=!42.tag.portal.temp1] run scoreboard players set @e[tag=42.tag.portal.temp,tag=42.tag.portal.door] 42.obj.portal.var.x 2

execute if entity @s[tag=42.tag.portal.loader] run function 42:portal/door/load with storage 42:portal loader.temp_entity

execute as @e[tag=42.tag.portal.temp,tag=42.tag.portal.door,scores={42.obj.portal.var.x=1}] at @s run fill ~-1 ~ ~ ~1 ~2 ~ polished_blackstone_wall replace #42:portal/portal_replace
execute as @e[tag=42.tag.portal.temp,tag=42.tag.portal.door,scores={42.obj.portal.var.x=2}] at @s run fill ~ ~ ~-1 ~ ~2 ~1 polished_blackstone_wall replace #42:portal/portal_replace
execute as @e[tag=42.tag.portal.temp,tag=42.tag.portal.door,scores={42.obj.portal.var.x=2}] as @e[tag=42.tag.portal.temp,tag=42.tag.portal.door.group] at @s run rotate @s ~90 ~
execute as @e[tag=42.tag.portal.temp,tag=42.tag.portal.door,scores={42.obj.portal.var.x=2}] at @s run function 42:portal/door/unpower

tag @e remove 42.tag.portal.temp
kill @s[type=area_effect_cloud]
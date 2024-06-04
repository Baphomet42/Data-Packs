tag @e remove 42.portal_new_spawn
summon item ~ ~ ~ {Tags:["42.portal_new_spawn"],Item:{id:warped_fungus_on_a_stick,components:{\
    custom_data:{42datapack:3,portal_type:0b,portal_id:1,portal_color:0},\
    custom_model_data:4203000,item_name:'"Portal Gun"',\
    can_place_on:{predicates:[{blocks:"#42:portal_surface"}]},unbreakable:{show_in_tooltip:0b}}}}
scoreboard players set @e[type=!player,tag=42.portal_new_spawn] 42.datapack 3
$data modify entity @e[tag=42.portal_new_spawn,limit=1] Item.components."minecraft:custom_data".portal_type set value $(type)
$data modify entity @e[tag=42.portal_new_spawn,limit=1] Item.components."minecraft:custom_data".portal_id set value $(id)
$data modify entity @e[tag=42.portal_new_spawn,limit=1] Item.components."minecraft:custom_data".portal_color set value $(color)
execute as @e[tag=42.portal_new_spawn,nbt={Item:{components:{"minecraft:custom_data":{portal_type:0}}}}] run data modify entity @s Item.components."minecraft:custom_data".portal_type set value 0b
execute as @e[tag=42.portal_new_spawn,nbt={Item:{components:{"minecraft:custom_data":{portal_type:1}}}}] run data modify entity @s Item.components."minecraft:custom_data".portal_type set value 1b
execute as @e[tag=42.portal_new_spawn,nbt={Item:{components:{"minecraft:custom_data":{portal_type:1b}}}}] run data modify entity @s Item.id set value "carrot_on_a_stick"
execute as @e[tag=42.portal_new_spawn] run function 42:portal/gun/setup_look
tag @e remove 42.portal_new_spawn
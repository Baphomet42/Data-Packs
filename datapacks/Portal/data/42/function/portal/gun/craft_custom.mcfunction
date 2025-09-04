tag @e remove 42.tag.portal.new_spawn
summon item ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.new_spawn"],Item:{id:"minecraft:warped_fungus_on_a_stick",components:{\
    "minecraft:custom_data":{42data:{datapack:{},portal:{portal_gun:{pair_type:0,pair_link:1,color:0}}}},\
    "minecraft:item_model":"42:portal/portal_gun",\
    "!minecraft:damage":{},\
    "!minecraft:max_damage":{},\
    "minecraft:damage_resistant":{types:"#minecraft:is_fire"},\
    "minecraft:tool":{rules:[],can_destroy_blocks_in_creative:false},\
    "minecraft:can_place_on":[{blocks:"#42:portal/portal_surface"}]\
    }}}
$data modify entity @e[tag=42.tag.portal.new_spawn,limit=1] Item.components.minecraft:custom_data.42data.portal.portal_gun.pair_type set value $(type)
$data modify entity @e[tag=42.tag.portal.new_spawn,limit=1] Item.components.minecraft:custom_data.42data.portal.portal_gun.pair_link set value $(id)
$data modify entity @e[tag=42.tag.portal.new_spawn,limit=1] Item.components.minecraft:custom_data.42data.portal.portal_gun.color set value $(color)
execute as @e[tag=42.tag.portal.new_spawn] if items entity @s contents *[custom_data~{42data:{portal:{portal_gun:{pair_type:1}}}}] run data modify entity @s Item.id set value "carrot_on_a_stick"
execute as @e[tag=42.tag.portal.new_spawn] run function 42:portal/gun/setup_look
execute if score #42.var.portal.config.resourcepack 42.obj.portal.vars matches 0 run data remove entity @e[limit=1,tag=42.tag.portal.new_spawn] Item.components.minecraft:item_model
execute if score #42.var.portal.config.resourcepack 42.obj.portal.vars matches 0 run data remove entity @e[limit=1,tag=42.tag.portal.new_spawn] Item.components.minecraft:custom_model_data
tag @e remove 42.tag.portal.new_spawn
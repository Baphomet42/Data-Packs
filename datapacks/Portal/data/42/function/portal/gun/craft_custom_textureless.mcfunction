tag @e remove 42.tag.portal.new_spawn
summon item ~ ~ ~ {Tags:["42.tag.portal.new_spawn"],Item:{id:warped_fungus_on_a_stick,components:{\
    "minecraft:custom_data":{42components:{datapack:3,portal:{portal_gun:{pair_type:0b,pair_link:1,color:0}}}},\
    "minecraft:unbreakable":{show_in_tooltip:0b},\
    "minecraft:attribute_modifiers":{modifiers:[{type:"block_interaction_range",slot:"mainhand",id:"42:portal_gun",operation:"add_multiplied_total",amount:-1d}],show_in_tooltip:0b},\
    "minecraft:can_place_on":{predicates:[{blocks:"#42:portal/portal_surface"}]}\
    }}}
scoreboard players set @e[type=!player,tag=42.tag.portal.new_spawn] 42.obj.datapack 3
$data modify entity @e[tag=42.tag.portal.new_spawn,limit=1] Item.components.minecraft:custom_data.42components.portal.portal_gun.pair_type set value $(type)
$data modify entity @e[tag=42.tag.portal.new_spawn,limit=1] Item.components.minecraft:custom_data.42components.portal.portal_gun.pair_link set value $(id)
$data modify entity @e[tag=42.tag.portal.new_spawn,limit=1] Item.components.minecraft:custom_data.42components.portal.portal_gun.color set value $(color)
execute as @e[tag=42.tag.portal.new_spawn] if items entity @s contents *[custom_data~{42components:{portal:{portal_gun:{pair_type:0}}}}] run data modify entity @s Item.components.minecraft:custom_data.42components.portal.portal_gun.pair_type set value 0b
execute as @e[tag=42.tag.portal.new_spawn] if items entity @s contents *[custom_data~{42components:{portal:{portal_gun:{pair_type:1}}}}] run data modify entity @s Item.components.minecraft:custom_data.42components.portal.portal_gun.pair_type set value 1b
execute as @e[tag=42.tag.portal.new_spawn] if items entity @s contents *[custom_data~{42components:{portal:{portal_gun:{pair_type:1b}}}}] run data modify entity @s Item.id set value "carrot_on_a_stick"
execute as @e[tag=42.tag.portal.new_spawn] run function 42:portal/gun/setup_look

execute as @e[tag=42.tag.portal.new_spawn] if items entity @s contents *[custom_data~{42components:{portal:{portal_gun:{pair_type:0b}}}}] run data modify entity @s Item.components.minecraft:item_model set value "warped_fungus_on_a_stick"
execute as @e[tag=42.tag.portal.new_spawn] if items entity @s contents *[custom_data~{42components:{portal:{portal_gun:{pair_type:1b}}}}] run data modify entity @s Item.components.minecraft:item_model set value "carrot_on_a_stick"

tag @e remove 42.tag.portal.new_spawn
tag @e remove 42.tag.portal.new_spawn
summon item ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.new_spawn"],Item:{id:"minecraft:warped_fungus_on_a_stick",components:{\
    "minecraft:custom_data":{42data:{datapack_item:{}}},\
    "minecraft:item_model":"42:portal/portal_gun",\
    "minecraft:unbreakable":{},\
    "minecraft:attribute_modifiers":[{type:"block_interaction_range",slot:"mainhand",id:"42:portal/item/portal_gun/mainhand",operation:"add_multiplied_total",amount:-1d}],\
    "minecraft:item_name":"Portal Gun"\
    }}}
execute if score #42.var.portal.config.resourcepack 42.obj.portal.vars matches 0 run data remove entity @e[limit=1,tag=42.tag.portal.new_spawn] Item.components.minecraft:item_model
tag @e remove 42.tag.portal.new_spawn
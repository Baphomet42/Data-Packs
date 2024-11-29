tag @e remove 42.tag.portal.new_spawn
summon item ~ ~ ~ {Item:{id:warped_fungus_on_a_stick,components:{\
    "minecraft:custom_data":{42components:{datapack:3}},\
    "minecraft:item_model":"42:portal/portal_gun",\
    "minecraft:unbreakable":{show_in_tooltip:0b},\
    "minecraft:attribute_modifiers":{modifiers:[{type:"block_interaction_range",slot:"mainhand",id:"42:portal_gun",operation:"add_multiplied_total",amount:-1d}],show_in_tooltip:0b},\
    "minecraft:item_name":'"Portal Gun"'\
    }}}
scoreboard players set @e[type=!player,tag=42.tag.portal.new_spawn] 42.obj.datapack 3
tag @e remove 42.tag.portal.new_spawn
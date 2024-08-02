tag @e remove 42.portal_new_spawn
summon item ~ ~ ~ {Item:{id:warped_fungus_on_a_stick,components:{\
    "minecraft:custom_data":{42datapack:3},\
    "minecraft:custom_model_data":4203017,\
    "minecraft:item_name":'"Portal Gun"',\
    "minecraft:unbreakable":{show_in_tooltip:0b},\
    "minecraft:attribute_modifiers":{modifiers:[{type:"player.block_interaction_range",slot:"mainhand",id:"42:portal_gun",operation:"add_multiplied_total",amount:-1d}],show_in_tooltip:0b}\
    }}}
scoreboard players set @e[type=!player,tag=42.portal_new_spawn] 42.datapack 3
tag @e remove 42.portal_new_spawn
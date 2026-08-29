summon item_display ~ ~ ~ {UUID:[I;1108635501,-666943135,-1463293571,-1776192742],view_range:0f}

loot replace entity 42146f6d-d83f-4161-a8c7-e97d9621731a contents fish \
    {\
        pools:[\
            {\
                rolls:1,\
                entries:[\
                    {\
                        type:"item",\
                        name:"stone",\
                        modifier:[\
                            {\
                                type:"set_components",\
                                components:{\
                                    "!minecraft:attack_animation":{},\
                                    "!minecraft:attribute_modifiers":{},\
                                    "!minecraft:break_sound":{},\
                                    "!minecraft:enchantments":{},\
                                    "!minecraft:interact_animation":{},\
                                    "!minecraft:item_model":{},\
                                    "!minecraft:item_name":{},\
                                    "!minecraft:lore":{},\
                                    "!minecraft:max_stack_size":{},\
                                    "!minecraft:rarity":{},\
                                    "!minecraft:repair_cost":{},\
                                    "!minecraft:tooltip_display":{},\
                                    "!minecraft:use_effects":{}\
                                }\
                            },\
                            {\
                                type:"copy_components",\
                                source:"tool"\
                            }\
                        ]\
                    }\
                ]\
            }\
        ]\
    } \
    ~ ~ ~ mainhand

data remove storage 42:io data.output.components
data modify storage 42:io data.output.components set from entity 42146f6d-d83f-4161-a8c7-e97d9621731a item.components

data remove storage 42:io data.output.components.!minecraft:attack_animation
data remove storage 42:io data.output.components.!minecraft:attribute_modifiers
data remove storage 42:io data.output.components.!minecraft:break_sound
data remove storage 42:io data.output.components.!minecraft:enchantments
data remove storage 42:io data.output.components.!minecraft:interact_animation
data remove storage 42:io data.output.components.!minecraft:item_model
data remove storage 42:io data.output.components.!minecraft:item_name
data remove storage 42:io data.output.components.!minecraft:lore
data remove storage 42:io data.output.components.!minecraft:max_stack_size
data remove storage 42:io data.output.components.!minecraft:rarity
data remove storage 42:io data.output.components.!minecraft:repair_cost
data remove storage 42:io data.output.components.!minecraft:tooltip_display
data remove storage 42:io data.output.components.!minecraft:use_effects

execute if items entity 42146f6d-d83f-4161-a8c7-e97d9621731a contents *[attack_animation={}] run data modify storage 42:io data.output.components.minecraft:attack_animation set value {}
execute if items entity 42146f6d-d83f-4161-a8c7-e97d9621731a contents *[attribute_modifiers=[]] run data modify storage 42:io data.output.components.minecraft:attribute_modifiers set value []
execute if items entity 42146f6d-d83f-4161-a8c7-e97d9621731a contents *[break_sound="minecraft:entity.item.break"] run data modify storage 42:io data.output.components.minecraft:break_sound set value "minecraft:entity.item.break"
execute if items entity 42146f6d-d83f-4161-a8c7-e97d9621731a contents *[enchantments={}] run data modify storage 42:io data.output.components.minecraft:enchantments set value {}
execute if items entity 42146f6d-d83f-4161-a8c7-e97d9621731a contents *[interact_animation={}] run data modify storage 42:io data.output.components.minecraft:interact_animation set value {}
execute if items entity 42146f6d-d83f-4161-a8c7-e97d9621731a contents *[item_model="minecraft:stone"] run data modify storage 42:io data.output.components.minecraft:item_model set value "minecraft:stone"
execute if items entity 42146f6d-d83f-4161-a8c7-e97d9621731a contents *[item_name={translate:"block.minecraft.stone"}] run data modify storage 42:io data.output.components.minecraft:item_name set value {translate:"block.minecraft.stone"}
execute if items entity 42146f6d-d83f-4161-a8c7-e97d9621731a contents *[lore=[]] run data modify storage 42:io data.output.components.minecraft:lore set value []
execute if items entity 42146f6d-d83f-4161-a8c7-e97d9621731a contents *[max_stack_size=64] run data modify storage 42:io data.output.components.minecraft:max_stack_size set value 64
execute if items entity 42146f6d-d83f-4161-a8c7-e97d9621731a contents *[rarity="common"] run data modify storage 42:io data.output.components.minecraft:rarity set value "common"
execute if items entity 42146f6d-d83f-4161-a8c7-e97d9621731a contents *[repair_cost=0] run data modify storage 42:io data.output.components.minecraft:repair_cost set value 0
execute if items entity 42146f6d-d83f-4161-a8c7-e97d9621731a contents *[tooltip_display={}] run data modify storage 42:io data.output.components.minecraft:tooltip_display set value {}
execute if items entity 42146f6d-d83f-4161-a8c7-e97d9621731a contents *[use_effects={}] run data modify storage 42:io data.output.components.minecraft:use_effects set value {}

kill 42146f6d-d83f-4161-a8c7-e97d9621731a

tellraw @a {storage:"42:io",nbt:"data.output.components"}
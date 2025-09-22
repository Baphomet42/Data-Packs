give @s armor_stand[\
    minecraft:item_model="minecraft:player_head",\
    minecraft:item_name=[{translate:"entity.minecraft.mannequin"}," Poser"],\
    minecraft:custom_data={42data:{\
        datapack:{},\
        posers:{\
            entity_data:{\
                Invulnerable:true\
                }\
            }\
        }},\
    minecraft:entity_data={\
        id:"minecraft:armor_stand",\
        Tags:["42.tag.posers.spawn_mannequin"],\
        Marker:true,\
        Small:true,\
        Invisible:true,\
        },\
    minecraft:lore=[\
        [{text:"Mannequin Profile: ",color:"gold",italic:false},{text:"Random Skin",color:"gray"}]\
        ],\
    minecraft:profile={},\
    minecraft:max_stack_size=64,\
    minecraft:rarity=epic\
    ]
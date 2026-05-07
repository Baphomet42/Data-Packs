give @s armor_stand[\
    minecraft:item_model="minecraft:player_head",\
    minecraft:item_name=[{translate:"entity.minecraft.mannequin"}," Poser"," - ","Steve (Wide)"],\
    minecraft:custom_data={42data:{\
        datapack:{},\
        posers:{\
            entity_data:{\
                profile:{texture:"minecraft:entity/player/wide/steve",model:"wide"},\
                Tags:["42.tag.posers.mannequin","42.tag.tech"],\
                Invulnerable:true,\
                active_effects:[{id:"minecraft:resistance",duration:-1,amplifier:255ub,show_particles:false,show_icon:false}]\
                }\
            }\
        }},\
    minecraft:entity_data={\
        id:"minecraft:armor_stand",\
        Tags:["42.tag.posers.spawn_mannequin","42.tag.tech"],\
        Marker:true,\
        Small:true,\
        Invisible:true\
        },\
    minecraft:lore=[\
        [{text:"Mannequin Profile: ",color:"gold",italic:false},{text:"Default",color:"gray"}],\
        [{text:"  Model: ",color:"gold",italic:false},{text:"wide",color:"gray"}],\
        [{text:"  Skin: ",color:"gold",italic:false},{text:"minecraft:entity/player/wide/steve",color:"gray"}]\
        ],\
    minecraft:profile={texture:"minecraft:entity/player/wide/steve",model:"wide"},\
    minecraft:max_stack_size=64,\
    minecraft:rarity=epic\
    ]
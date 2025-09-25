give @s armor_stand[\
    minecraft:item_model="minecraft:player_head",\
    minecraft:item_name=[{translate:"entity.minecraft.mannequin"}," Poser"," - ","Alex (Slim)"],\
    minecraft:custom_data={42data:{\
        datapack:{},\
        posers:{\
            entity_data:{\
                profile:{texture:"minecraft:entity/player/slim/alex",model:"slim"},\
                Tags:["42.tag.posers.mannequin"],\
                Invulnerable:true,\
                active_effects:[{id:"minecraft:resistance",duration:-1,amplifier:255ub,show_particles:false,show_icon:false}]\
                }\
            }\
        }},\
    minecraft:entity_data={\
        id:"minecraft:armor_stand",\
        Tags:["42.tag.posers.spawn_mannequin"],\
        Marker:true,\
        Small:true,\
        Invisible:true\
        },\
    minecraft:lore=[\
        [{text:"Mannequin Profile: ",color:"gold",italic:false},{text:"Default",color:"gray"}],\
        [{text:"  Model: ",color:"gold",italic:false},{text:"slim",color:"gray"}],\
        [{text:"  Skin: ",color:"gold",italic:false},{text:"minecraft:entity/player/slim/alex",color:"gray"}]\
        ],\
    minecraft:profile={texture:"minecraft:entity/player/slim/alex",model:"slim"},\
    minecraft:max_stack_size=64,\
    minecraft:rarity=epic\
    ]
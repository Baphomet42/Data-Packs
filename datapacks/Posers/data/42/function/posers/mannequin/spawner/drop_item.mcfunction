execute unless entity @s[type=mannequin] run return fail
data remove storage 42:posers temp

execute store result storage 42:posers temp.dy double .0009 run attribute @s scale get 1000
function 42:posers/mannequin/spawner/drop_item_macro with storage 42:posers temp

data modify storage 42:posers temp.item.Motion set value [0d,0d,0d]
execute store result storage 42:posers temp.item.Motion[0] double .001 run random value -100..100
execute store result storage 42:posers temp.item.Motion[1] double .001 run random value 0..100
execute store result storage 42:posers temp.item.Motion[2] double .001 run random value -100..100

data merge storage 42:posers {temp:{item:{Item:{components:{\
    "minecraft:item_model":"minecraft:player_head",\
    "minecraft:item_name":[[{translate:"entity.minecraft.mannequin"}," Poser"]," - ","Custom"],\
    "minecraft:custom_data":{42data:{datapack:{}}},\
    "minecraft:entity_data":{\
        id:"minecraft:armor_stand",\
        Tags:["42.tag.posers.spawn_mannequin"],\
        Marker:true,\
        Small:true,\
        Invisible:true\
        },\
    "minecraft:lore":[\
        [{text:"Mannequin Profile: ",color:"gold",italic:false},{text:"Random Skin",color:"gray"}]\
        ],\
    "minecraft:profile":{},\
    "minecraft:max_stack_size":64,\
    "minecraft:rarity":"epic"\
    }}}}}

data modify storage 42:posers temp.mannequin set from entity @s
data modify storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data merge from storage 42:posers temp.mannequin
data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.UUID
data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.Passengers
data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.Pos
data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.Rotation
data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.Motion
data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.Brain
data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.HurtByTimestamp
data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.Health
data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.FallFlying
data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.fall_distance
data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.Air
data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.OnGround
data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.PortalCooldown
data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.AbsorptionAmount
data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.DeathTime
data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.Fire
data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.HurtTime
data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.last_hurt_by_player
data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.last_hurt_by_player_memory_time
data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.last_hurt_by_mob
data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.ticks_since_last_hurt_by_mob
data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.Tags

execute unless data storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.attributes[{id:"minecraft:movement_speed",base:0.7d}].modifiers run data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.attributes[{id:"minecraft:movement_speed",base:0.7d}]
execute unless data storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.attributes[{id:"minecraft:scale",base:1d}].modifiers run data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.attributes[{id:"minecraft:scale",base:1d}]

execute if data storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data{Invulnerable:true} run data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.Invulnerable
execute if data storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data{main_hand:"right"} run data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.main_hand

execute unless data storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.attributes[0] run data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.attributes
execute unless data storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.hidden_layers[0] run data remove storage 42:posers temp.item.Item.components.minecraft:custom_data.mannequin_data.hidden_layers

function 42:posers/mannequin/spawner/switch_name
function 42:posers/mannequin/spawner/switch_lore

execute if data storage 42:posers temp.mannequin.profile run data modify storage 42:posers temp.item.Item.components.minecraft:profile set from storage 42:posers temp.mannequin.profile

data modify entity @e[type=item,tag=42.tag.posers.new_spawn,limit=1,x=0] {} merge from storage 42:posers temp.item
item modify entity @e[type=item,tag=42.tag.posers.new_spawn,limit=1,x=0] contents [{function:"set_name",target:"item_name",entity:"this",name:{storage:"42:posers",nbt:"temp.item.Item.components.minecraft:item_name",interpret:true}},{function:"set_lore",mode:replace_section,offset:0,entity:"this",lore:[{storage:"42:posers",nbt:"temp.item.Item.components.minecraft:lore[0]",interpret:true}]}]

data remove storage 42:posers temp
tag @e remove 42.tag.posers.new_spawn
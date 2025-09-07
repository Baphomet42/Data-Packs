execute unless entity @s[type=mannequin] run return fail
execute at @s run summon item ~ ~.5 ~ {Tags:["42.tag.posers.new_spawn"],data:{42data:{datapack:{}}},Item:{id:"minecraft:armor_stand"}}

data remove storage 42:poser temp
data modify storage 42:poser temp.item.Motion set value [0d,0d,0d]
execute store result storage 42:poser temp.item.Motion[0] double .001 run random value -100..100
execute store result storage 42:poser temp.item.Motion[1] double .001 run random value 0..100
execute store result storage 42:poser temp.item.Motion[2] double .001 run random value -100..100

data merge storage 42:poser {temp:{item:{Item:{components:{\
    "minecraft:item_model":"minecraft:zombie_spawn_egg",\
    "minecraft:item_name":[{translate:"entity.minecraft.mannequin"}," - ","Custom"],\
    "minecraft:custom_data":{42data:{datapack:{}}},\
    "minecraft:entity_data":{\
        id:"minecraft:armor_stand",\
        Tags:["42.tag.posers.spawn_mannequin"],\
        Marker:true,\
        Small:true,\
        Invisible:true\
        },\
    "minecraft:lore":[["Mannequin profile: ",{text:"Dynamic profile"}]],\
    "minecraft:max_stack_size":64\
    }}}}}

data modify storage 42:poser temp.mannequin set from entity @s
data modify storage 42:poser temp.item.Item.components.minecraft:custom_data.mannequin_data merge from storage 42:poser temp.mannequin
data remove storage 42:poser temp.item.Item.components.minecraft:custom_data.mannequin_data.UUID
data remove storage 42:poser temp.item.Item.components.minecraft:custom_data.mannequin_data.Passengers
data remove storage 42:poser temp.item.Item.components.minecraft:custom_data.mannequin_data.Pos
data remove storage 42:poser temp.item.Item.components.minecraft:custom_data.mannequin_data.Rotation
data remove storage 42:poser temp.item.Item.components.minecraft:custom_data.mannequin_data.Motion
data remove storage 42:poser temp.item.Item.components.minecraft:custom_data.mannequin_data.Brain
data remove storage 42:poser temp.item.Item.components.minecraft:custom_data.mannequin_data.HurtByTimestamp
data remove storage 42:poser temp.item.Item.components.minecraft:custom_data.mannequin_data.Health
data remove storage 42:poser temp.item.Item.components.minecraft:custom_data.mannequin_data.FallFlying
data remove storage 42:poser temp.item.Item.components.minecraft:custom_data.mannequin_data.fall_distance
data remove storage 42:poser temp.item.Item.components.minecraft:custom_data.mannequin_data.Air
data remove storage 42:poser temp.item.Item.components.minecraft:custom_data.mannequin_data.OnGround
data remove storage 42:poser temp.item.Item.components.minecraft:custom_data.mannequin_data.PortalCooldown
data remove storage 42:poser temp.item.Item.components.minecraft:custom_data.mannequin_data.AbsorptionAmount
data remove storage 42:poser temp.item.Item.components.minecraft:custom_data.mannequin_data.DeathTime
data remove storage 42:poser temp.item.Item.components.minecraft:custom_data.mannequin_data.Fire
data remove storage 42:poser temp.item.Item.components.minecraft:custom_data.mannequin_data.attributes[{id:"minecraft:movement_speed",base:0.7d}]
data remove storage 42:poser temp.item.Item.components.minecraft:custom_data.mannequin_data.HurtTime
data remove storage 42:poser temp.item.Item.components.minecraft:custom_data.mannequin_data.last_hurt_by_player
data remove storage 42:poser temp.item.Item.components.minecraft:custom_data.mannequin_data.last_hurt_by_player_memory_time
data remove storage 42:poser temp.item.Item.components.minecraft:custom_data.mannequin_data.last_hurt_by_mob
data remove storage 42:poser temp.item.Item.components.minecraft:custom_data.mannequin_data.ticks_since_last_hurt_by_mob
data remove storage 42:poser temp.item.Item.components.minecraft:custom_data.mannequin_data.Tags

execute if data storage 42:poser temp.mannequin.CustomName run data modify storage 42:poser temp.item.Item.components.minecraft:item_name[2] set from storage 42:poser temp.mannequin.CustomName
execute if data storage 42:poser temp.mannequin.profile.texture run data modify storage 42:poser temp.item.Item.components.minecraft:lore[0][1].text set from storage 42:poser temp.mannequin.profile.texture
execute if data storage 42:poser temp.mannequin.profile.id if data storage 42:poser temp.mannequin.profile.name run data modify storage 42:poser temp.item.Item.components.minecraft:lore[0][1].text set value "Fallback profile"
execute if data storage 42:poser temp.mannequin.profile.properties run data modify storage 42:poser temp.item.Item.components.minecraft:lore[0][1].text set value "Static profile"

execute if data storage 42:poser temp.mannequin.profile unless data storage 42:poser temp.mannequin.profile.texture run data modify storage 42:poser temp.item.Item.components.minecraft:item_model set value "minecraft:player_head"
execute if data storage 42:poser temp.mannequin.profile unless data storage 42:poser temp.mannequin.profile.texture run data modify storage 42:poser temp.item.Item.components.minecraft:profile set from storage 42:poser temp.mannequin.profile

data modify entity @e[type=item,tag=42.tag.posers.new_spawn,limit=1,x=0] {} merge from storage 42:poser temp.item

data remove storage 42:poser temp
tag @e remove 42.tag.posers.new_spawn
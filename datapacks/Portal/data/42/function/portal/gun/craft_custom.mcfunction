tag @e remove 42.tag.portal.new_spawn
summon item ~ ~ ~ {Tags:["42.tag.summon","42.tag.portal.new_spawn"],Item:{id:"minecraft:poisonous_potato",components:{\
    "!minecraft:food": {},\
    "minecraft:max_stack_size": 1,\
    "minecraft:consumable":{consume_seconds:2000000000,has_consume_particles:false,sound:"intentionally_empty",animation:"bow"},\
    "minecraft:use_effects":{can_sprint:true,speed_multiplier:1f},\
    "minecraft:piercing_weapon":{deals_knockback:false},\
    "minecraft:enchantments":{"42:portal/portal_gun":1},\
    "minecraft:enchantment_glint_override": false,\
    "minecraft:custom_data":{42data:{datapack:{},portal:{portal_gun:{}}}},\
    "minecraft:item_name":{text:"Portal Gun",color:"white"},\
    "minecraft:item_model":"42:portal/portal_gun",\
    "minecraft:custom_model_data":{},\
    "!minecraft:damage":{},\
    "!minecraft:max_damage":{},\
    "minecraft:damage_resistant":{types:"#minecraft:is_fire"},\
    "minecraft:tool":{rules:[],can_destroy_blocks_in_creative:false},\
    "minecraft:can_place_on":[{blocks:"#42:portal/portal_surface"}],\
    "minecraft:tooltip_display":{hidden_components:["minecraft:enchantments"]}\
    }}}

data remove storage 42:portal temp
$data modify storage 42:portal temp.args set value $(args)
execute if data storage 42:portal temp.args.link run data modify storage 42:portal temp.merge.minecraft:custom_data.42data.portal.portal_gun.link set from storage 42:portal temp.args.link
execute if data storage 42:portal temp.args.main run data modify storage 42:portal temp.merge.minecraft:custom_data.42data.portal.portal_gun.main set value {color:0}
execute if data storage 42:portal temp.args.main.color run data modify storage 42:portal temp.merge.minecraft:custom_data.42data.portal.portal_gun.main.color set from storage 42:portal temp.args.main.color
execute if data storage 42:portal temp.args.alt run data modify storage 42:portal temp.merge.minecraft:custom_data.42data.portal.portal_gun.alt set value {color:0}
execute if data storage 42:portal temp.args.alt.color run data modify storage 42:portal temp.merge.minecraft:custom_data.42data.portal.portal_gun.alt.color set from storage 42:portal temp.args.alt.color
execute as @e[tag=42.tag.portal.new_spawn] run function 42:portal/gun/setup_look
execute if data storage 42:portal temp.merge run data modify entity @e[tag=42.tag.portal.new_spawn,limit=1] Item.components merge from storage 42:portal temp.merge
data remove storage 42:portal temp

tag @e remove 42.tag.portal.new_spawn
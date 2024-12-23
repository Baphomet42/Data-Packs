data modify storage 42:src craft_temp.item set from storage 42:src data.gun.default_item
$data modify storage 42:src craft_temp.args set value $(args)

data modify storage 42:src craft_temp.item.components.minecraft:item_name set from storage 42:src craft_temp.args.name
data modify storage 42:src craft_temp.item.components.minecraft:item_model set from storage 42:src craft_temp.args.model
data modify storage 42:src craft_temp.item.components.minecraft:custom_data.42data.src.gun merge from storage 42:src craft_temp.args.gun

data modify storage 42:src craft_temp.item.components.minecraft:max_damage set from storage 42:src craft_temp.item.components.minecraft:custom_data.42data.src.gun.ammo.max
data modify storage 42:src craft_temp.item.components.minecraft:damage set from storage 42:src craft_temp.item.components.minecraft:custom_data.42data.src.gun.ammo.current.inverse

summon item ~ ~ ~ {Tags:["42.tag.summon","42.tag.src.gun.new_item_spawn"],Item:{id:"minecraft:stone"}}
data modify entity @e[limit=1,type=item,tag=42.tag.src.gun.new_item_spawn] Item set from storage 42:src craft_temp.item

tag @e[type=item] remove 42.tag.src.gun.new_item_spawn
data remove storage 42:src craft_temp
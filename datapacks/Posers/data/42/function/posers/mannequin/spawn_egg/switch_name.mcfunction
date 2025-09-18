execute if data storage 42:posers temp.mannequin.CustomName run return run data modify storage 42:posers temp.item.Item.components.minecraft:item_name[2] set from storage 42:posers temp.mannequin.CustomName

execute unless data storage 42:posers temp.mannequin.profile run return run data modify storage 42:posers temp.item.Item.components.minecraft:item_name set value [{translate:"entity.minecraft.mannequin"}," Poser"]

execute if data storage 42:posers temp.mannequin.profile{texture:"minecraft:entity/player/slim/steve",model:"slim"} run return run data modify storage 42:posers temp.item.Item.components.minecraft:item_name[2] set value "Steve (Slim)"
execute if data storage 42:posers temp.mannequin.profile{texture:"minecraft:entity/player/slim/alex",model:"slim"} run return run data modify storage 42:posers temp.item.Item.components.minecraft:item_name[2] set value "Alex (Slim)"
execute if data storage 42:posers temp.mannequin.profile{texture:"minecraft:entity/player/slim/ari",model:"slim"} run return run data modify storage 42:posers temp.item.Item.components.minecraft:item_name[2] set value "Ari (Slim)"
execute if data storage 42:posers temp.mannequin.profile{texture:"minecraft:entity/player/slim/efe",model:"slim"} run return run data modify storage 42:posers temp.item.Item.components.minecraft:item_name[2] set value "Efe (Slim)"
execute if data storage 42:posers temp.mannequin.profile{texture:"minecraft:entity/player/slim/kai",model:"slim"} run return run data modify storage 42:posers temp.item.Item.components.minecraft:item_name[2] set value "Kai (Slim)"
execute if data storage 42:posers temp.mannequin.profile{texture:"minecraft:entity/player/slim/makena",model:"slim"} run return run data modify storage 42:posers temp.item.Item.components.minecraft:item_name[2] set value "Makena (Slim)"
execute if data storage 42:posers temp.mannequin.profile{texture:"minecraft:entity/player/slim/noor",model:"slim"} run return run data modify storage 42:posers temp.item.Item.components.minecraft:item_name[2] set value "Noor (Slim)"
execute if data storage 42:posers temp.mannequin.profile{texture:"minecraft:entity/player/slim/sunny",model:"slim"} run return run data modify storage 42:posers temp.item.Item.components.minecraft:item_name[2] set value "Sunny (Slim)"
execute if data storage 42:posers temp.mannequin.profile{texture:"minecraft:entity/player/slim/zuri",model:"slim"} run return run data modify storage 42:posers temp.item.Item.components.minecraft:item_name[2] set value "Zuri (Slim)"

execute if data storage 42:posers temp.mannequin.profile{texture:"minecraft:entity/player/wide/steve",model:"wide"} run return run data modify storage 42:posers temp.item.Item.components.minecraft:item_name[2] set value "Steve (Wide)"
execute if data storage 42:posers temp.mannequin.profile{texture:"minecraft:entity/player/wide/alex",model:"wide"} run return run data modify storage 42:posers temp.item.Item.components.minecraft:item_name[2] set value "Alex (Wide)"
execute if data storage 42:posers temp.mannequin.profile{texture:"minecraft:entity/player/wide/ari",model:"wide"} run return run data modify storage 42:posers temp.item.Item.components.minecraft:item_name[2] set value "Ari (Wide)"
execute if data storage 42:posers temp.mannequin.profile{texture:"minecraft:entity/player/wide/efe",model:"wide"} run return run data modify storage 42:posers temp.item.Item.components.minecraft:item_name[2] set value "Efe (Wide)"
execute if data storage 42:posers temp.mannequin.profile{texture:"minecraft:entity/player/wide/kai",model:"wide"} run return run data modify storage 42:posers temp.item.Item.components.minecraft:item_name[2] set value "Kai (Wide)"
execute if data storage 42:posers temp.mannequin.profile{texture:"minecraft:entity/player/wide/makena",model:"wide"} run return run data modify storage 42:posers temp.item.Item.components.minecraft:item_name[2] set value "Makena (Wide)"
execute if data storage 42:posers temp.mannequin.profile{texture:"minecraft:entity/player/wide/noor",model:"wide"} run return run data modify storage 42:posers temp.item.Item.components.minecraft:item_name[2] set value "Noor (Wide)"
execute if data storage 42:posers temp.mannequin.profile{texture:"minecraft:entity/player/wide/sunny",model:"wide"} run return run data modify storage 42:posers temp.item.Item.components.minecraft:item_name[2] set value "Sunny (Wide)"
execute if data storage 42:posers temp.mannequin.profile{texture:"minecraft:entity/player/wide/zuri",model:"wide"} run return run data modify storage 42:posers temp.item.Item.components.minecraft:item_name[2] set value "Zuri (Wide)"

execute if data storage 42:posers temp.mannequin.profile.texture run return run data modify storage 42:posers temp.item.Item.components.minecraft:item_name[2] set value "Custom Texture"
execute if data storage 42:posers temp.mannequin.profile.id if data storage 42:posers temp.mannequin.profile.name unless data storage 42:posers temp.mannequin.profile.properties run return run data modify storage 42:posers temp.item.Item.components.minecraft:item_name[2] set value "Fallback Profile"
execute if data storage 42:posers temp.mannequin.profile.name run return run data modify storage 42:posers temp.item.Item.components.minecraft:item_name[2] set from storage 42:posers temp.mannequin.profile.name
execute if data storage 42:posers temp.mannequin.profile.properties run return run data modify storage 42:posers temp.item.Item.components.minecraft:item_name[2] set value "Static Profile"
execute if data storage 42:posers temp.mannequin.profile.id run return run data modify storage 42:posers temp.item.Item.components.minecraft:item_name[2] set value "Dynamic UUID"

data modify storage 42:posers temp.item.Item.components.minecraft:item_name[2] set value "Default"
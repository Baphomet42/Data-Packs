execute unless data storage 42:posers temp.mannequin.profile run return run data modify storage 42:posers temp.item.Item.components.minecraft:lore[0][1].text set value "Random Skin"

execute if data storage 42:posers temp.mannequin.profile.model run data modify storage 42:posers temp.item.Item.components.minecraft:lore append value [{text:"  Model: ",color:"gold",italic:false},{text:"",color:"gray"}]
execute if data storage 42:posers temp.mannequin.profile.model run data modify storage 42:posers temp.item.Item.components.minecraft:lore[-1][1].text set from storage 42:posers temp.mannequin.profile.model

execute if data storage 42:posers temp.mannequin.profile.texture run data modify storage 42:posers temp.item.Item.components.minecraft:lore append value [{text:"  Skin: ",color:"gold",italic:false},{text:"",color:"gray"}]
execute if data storage 42:posers temp.mannequin.profile.texture run data modify storage 42:posers temp.item.Item.components.minecraft:lore[-1][1].text set from storage 42:posers temp.mannequin.profile.texture

execute if data storage 42:posers temp.mannequin.profile.cape run data modify storage 42:posers temp.item.Item.components.minecraft:lore append value [{text:"  Cape: ",color:"gold",italic:false},{text:"",color:"gray"}]
execute if data storage 42:posers temp.mannequin.profile.cape run data modify storage 42:posers temp.item.Item.components.minecraft:lore[-1][1].text set from storage 42:posers temp.mannequin.profile.cape

execute if data storage 42:posers temp.mannequin.profile.elytra run data modify storage 42:posers temp.item.Item.components.minecraft:lore append value [{text:"  Elytra: ",color:"gold",italic:false},{text:"",color:"gray"}]
execute if data storage 42:posers temp.mannequin.profile.elytra run data modify storage 42:posers temp.item.Item.components.minecraft:lore[-1][1].text set from storage 42:posers temp.mannequin.profile.elytra

execute if data storage 42:posers temp.mannequin.profile.properties run return run data modify storage 42:posers temp.item.Item.components.minecraft:lore[0][1].text set value "Static Profile"
execute if data storage 42:posers temp.mannequin.profile.id if data storage 42:posers temp.mannequin.profile.name run return run data modify storage 42:posers temp.item.Item.components.minecraft:lore[0][1].text set value "Fallback Profile"
execute if data storage 42:posers temp.mannequin.profile.id run return run data modify storage 42:posers temp.item.Item.components.minecraft:lore[0][1] set value {storage:"42:posers",nbt:"temp.mannequin.profile.id",color:"gray"}
execute if data storage 42:posers temp.mannequin.profile.name run return run data modify storage 42:posers temp.item.Item.components.minecraft:lore[0][1].text set from storage 42:posers temp.mannequin.profile.name

data modify storage 42:posers temp.item.Item.components.minecraft:lore[0][1].text set value "Default"

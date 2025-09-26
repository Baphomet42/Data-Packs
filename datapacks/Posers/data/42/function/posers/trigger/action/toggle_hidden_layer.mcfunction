data remove storage 42:posers temp
$data modify storage 42:posers temp.toggle set value "$(layer)"
data modify storage 42:posers temp.layers set from entity @s hidden_layers
data modify storage 42:posers temp.new_layers set value []
execute unless data storage 42:posers temp.layers run data modify storage 42:posers temp.layers set value []
execute if data storage 42:posers temp.layers[0] run function 42:posers/trigger/action/toggle_hidden_layer_loop

execute unless data storage 42:posers temp{found:1} run data modify storage 42:posers temp.new_layers append from storage 42:posers temp.toggle
data modify entity @s hidden_layers set from storage 42:posers temp.new_layers
$execute unless data storage 42:posers temp{found:1} run title @a[tag=42.tag.posers.this_trigger_player] actionbar [{text:"",color:"yellow"},{text:"Set ",color:"gold"},"$(layer)",{text:" to hidden for ",color:"gold"},{selector:"@s"}]
$execute if data storage 42:posers temp{found:1} run title @a[tag=42.tag.posers.this_trigger_player] actionbar [{text:"",color:"yellow"},{text:"Set ",color:"gold"},"$(layer)",{text:" to visible for ",color:"gold"},{selector:"@s"}]

data remove storage 42:posers temp

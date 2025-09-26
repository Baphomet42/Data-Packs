data modify storage 42:posers temp.this set from storage 42:posers temp.layers[-1]
execute store result storage 42:posers temp.equal int 1 run data modify storage 42:posers temp.this set from storage 42:posers temp.toggle

execute if data storage 42:posers temp{equal:1} run data modify storage 42:posers temp.new_layers append from storage 42:posers temp.layers[-1]
execute if data storage 42:posers temp{equal:0} run data modify storage 42:posers temp.found set value 1
data remove storage 42:posers temp.layers[-1]

execute if data storage 42:posers temp.layers[0] run function 42:posers/trigger/action/toggle_hidden_layer_loop
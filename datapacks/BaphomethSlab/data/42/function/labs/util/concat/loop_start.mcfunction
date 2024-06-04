data modify storage 42:labs concat.result set from storage 42:labs concat.temp.list[0]

data remove storage 42:labs concat.temp.list[0]
execute if data storage 42:labs concat.temp.list[0] run function 42:labs/util/concat/loop
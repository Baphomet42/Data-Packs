data modify storage 42:labs data.concat.temp.left set from storage 42:labs data.concat.result
data modify storage 42:labs data.concat.temp.right set from storage 42:labs data.concat.temp.list[0]
function 42:labs/util/concat/join with storage 42:labs data.concat.temp

data remove storage 42:labs data.concat.temp.list[0]
execute if data storage 42:labs data.concat.temp.list[0] run function 42:labs/util/concat/loop
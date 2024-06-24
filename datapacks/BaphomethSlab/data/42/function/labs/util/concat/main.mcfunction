# concatenate a list of strings into a single string
# place list of strings at storage 42:labs data.concat.list
# resulting string will be at storage 42:labs data.concat.result
# original list is unaltered
# optional separator may be set at storage 42:labs data.concat.separator

data modify storage 42:labs data.concat.result set value ""
data remove storage 42:labs data.concat.temp

execute if data storage 42:labs data.concat.list[0] run data modify storage 42:labs data.concat.temp.list set from storage 42:labs data.concat.list
data modify storage 42:labs data.concat.temp.separator set value ""
execute if data storage 42:labs data.concat.separator run data modify storage 42:labs data.concat.temp.separator set from storage 42:labs data.concat.separator
execute if data storage 42:labs data.concat.temp.list[0] run function 42:labs/util/concat/loop_start

data remove storage 42:labs data.concat.temp
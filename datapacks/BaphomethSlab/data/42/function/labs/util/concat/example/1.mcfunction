data remove storage 42:labs concat
data modify storage 42:labs concat.list set value ["abc","d","efghij","k","l"]
function 42:labs/util/concat/main
tellraw @a {"source":"storage","storage":"42:labs","nbt":"concat.result"}

# Chat output: abcdefghijkl
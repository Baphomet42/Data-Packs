data remove storage 42:labs data.concat
data modify storage 42:labs data.concat.list set value ["minecraft:sponge","minecraft:jigsaw","minecraft:heavy_core"]
data modify storage 42:labs data.concat.separator set value ", "
function 42:labs/util/concat/main
tellraw @a {"source":"storage","storage":"42:labs","nbt":"concat.result"}

# Chat output: minecraft:sponge, minecraft:jigsaw, minecraft:heavy_core
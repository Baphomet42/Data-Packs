scoreboard players set @s 42.obj.portal.death -10040
effect give @s resistance 10 42 true
effect give @s fire_resistance 10 0 true
effect give @s blindness 10 0 true
effect give @s levitation 10 0 true

data modify storage 42:portal macro.input set from entity @s LastDeathLocation
data modify storage 42:portal macro.dim set from storage 42:portal macro.input.dimension
data modify storage 42:portal macro.x set from storage 42:portal macro.input.pos[0]
data modify storage 42:portal macro.y set value 420d
data modify storage 42:portal macro.z set from storage 42:portal macro.input.pos[2]
function 42:portal/player/tp_macro with storage 42:portal macro
data remove storage 42:portal macro
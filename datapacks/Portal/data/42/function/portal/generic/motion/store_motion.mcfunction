execute if entity @s[type=player] run return run function 42:portal/generic/motion/store_motion_player

data modify storage 42:portal temp.Motion set from entity @s Motion
execute store result score @s 42.obj.portal.motion.x run data get storage 42:portal temp.Motion[0] 1000
execute store result score @s 42.obj.portal.motion.y run data get storage 42:portal temp.Motion[1] 1000
execute store result score @s 42.obj.portal.motion.z run data get storage 42:portal temp.Motion[2] 1000
data remove storage 42:portal temp
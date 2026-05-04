data modify storage 42:portal temp set from entity @s Motion

execute unless predicate 42:portal/gel/blue_cube_speed/x store result storage 42:portal temp[0] double .01 run random value -75..75
execute unless predicate 42:portal/gel/blue_cube_speed/y store result storage 42:portal temp[1] double .01 run random value 50..75
execute unless predicate 42:portal/gel/blue_cube_speed/z store result storage 42:portal temp[2] double .01 run random value -75..75

data modify entity @s Motion set from storage 42:portal temp
execute store result score @s 42.obj.portal.motion.x run data get storage 42:portal temp.Motion[0] 1000
execute store result score @s 42.obj.portal.motion.y run data get storage 42:portal temp.Motion[1] 1000
execute store result score @s 42.obj.portal.motion.z run data get storage 42:portal temp.Motion[2] 1000

data remove storage 42:portal temp
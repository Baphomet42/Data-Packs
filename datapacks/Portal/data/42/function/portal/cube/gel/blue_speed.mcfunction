data modify storage 42:portal temp set from entity @s Motion

execute unless predicate 42:portal/gel/blue_cube_speed/x store result storage 42:portal temp[0] double .01 run random value -75..75
execute unless predicate 42:portal/gel/blue_cube_speed/y store result storage 42:portal temp[1] double .01 run random value 50..75
execute unless predicate 42:portal/gel/blue_cube_speed/z store result storage 42:portal temp[2] double .01 run random value -75..75

data modify entity @s Motion set from storage 42:portal temp

data remove storage 42:portal temp
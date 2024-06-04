function 42:dbd/move/setup/unset
tag @s add 42.dbd_move

# disable jumping
attribute @s minecraft:generic.jump_strength modifier add 9ef20e33-3503-404e-89ef-ee43b4da26d4 "dbd_move_jump" -1 add_multiplied_total
# this is used to convert dbd scale to a better mc scale (1.25)
attribute @s minecraft:generic.movement_speed modifier add 517524d7-d3ba-442d-8433-4a7760a2cee1 "dbd_move_scale" .25 add_multiplied_total

# this attribute should set the minecraft walking speed to be 4.0 m/s (100% dbd speed)
# calculated with (4/4.317)-1
attribute @s minecraft:generic.movement_speed modifier add 80c284f8-dc20-4fc3-9f64-1b0e11059b48 "dbd_move_base" -.0734 add_multiplied_total
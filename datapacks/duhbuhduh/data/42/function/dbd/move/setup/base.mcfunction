function 42:dbd/move/setup/unset
tag @s add 42.dbd_move

# disable jumping
attribute @s minecraft:generic.jump_strength modifier add 42:dbd_move_jump -1 add_multiplied_total
# this is used to convert dbd scale to a better mc scale (1.25)
attribute @s minecraft:generic.movement_speed modifier add 42:dbd_move_scale .25 add_multiplied_total

# this attribute should set the minecraft walking speed to be 4.0 m/s (100% dbd speed)
# calculated with (4/4.317)-1
attribute @s minecraft:generic.movement_speed modifier add 42:dbd_move_base -.0734 add_multiplied_total
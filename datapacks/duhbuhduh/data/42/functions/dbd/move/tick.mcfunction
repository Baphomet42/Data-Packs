tag @s add 42.dbd_move_check
execute if predicate 42:is_sneaking run function 42:dbd/move/type/sneak
execute if entity @s[tag=42.dbd_move_check,predicate=42:is_sprinting] run function 42:dbd/move/type/run
execute if entity @s[tag=42.dbd_move_check] run function 42:dbd/move/type/walk
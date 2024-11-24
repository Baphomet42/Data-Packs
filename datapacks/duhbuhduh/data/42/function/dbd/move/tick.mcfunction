tag @s add 42.tag.dbd.move.check
execute if predicate 42:is_sneaking run function 42:dbd/move/type/sneak
execute if entity @s[tag=42.tag.dbd.move.check,predicate=42:is_sprinting] run function 42:dbd/move/type/run
execute if entity @s[tag=42.tag.dbd.move.check] run function 42:dbd/move/type/walk
tag @s add 42.tag.src.gun.scanned_item_entity
execute on origin unless entity @s[tag=42.tag.src.this] run return 0
execute if entity @s[nbt={Age:0s}] run tag @s add 42.tag.src.gun.entity_is_gun
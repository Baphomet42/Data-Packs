tag @s remove 42.tag.src.player.hold_gun
execute if items entity @s weapon.mainhand * run return 0
tag @s add 42.tag.src.this

execute as @e[type=item,distance=..5,tag=!42.tag.src.gun.scanned_item_entity] if items entity @s contents *[custom_data~{42components:{src:{gun:{}}}}] at @s run function 42:src/gun/common/try_reload_entity
execute if entity @e[type=item,distance=..10,tag=42.tag.src.gun.entity_is_gun] run function 42:src/gun/common/try_reload_start

tag @s remove 42.tag.src.this
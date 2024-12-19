execute if items entity @s weapon.mainhand * run return run function 42:src/gun/end_equip_instance

tag @s add 42.tag.src.temp.stop_holding.player
execute as @e[type=item,distance=..5,tag=!42.tag.src.gun.scanned_item_entity,predicate=42:src/gun/in_contents] at @s run function 42:src/gun/test_dropped_gun

execute unless entity @e[type=item,distance=..10,tag=42.tag.src.gun.entity_is_gun] run return run function 42:src/gun/end_equip_instance

tag @e[limit=1,type=item,sort=nearest,distance=..10,tag=42.tag.src.gun.entity_is_gun] add 42.tag.src.temp.stop_holding.entity
item replace entity @s weapon.mainhand from entity @e[limit=1,type=item,sort=nearest,distance=..10,tag=42.tag.src.temp.stop_holding.entity] contents
kill @e[limit=1,type=item,sort=nearest,distance=..10,tag=42.tag.src.temp.stop_holding.entity]
tag @e[type=item,distance=..10] remove 42.tag.src.gun.entity_is_gun
tag @s remove 42.tag.src.temp.stop_holding.player

function 42:src/gun/reload_start
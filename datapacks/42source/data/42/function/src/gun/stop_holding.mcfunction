tag @s remove 42.tag.src.gun.player.is_holding
scoreboard players set @s 42.obj.src.gun.use_time 0
tag @s remove 42.tag.src.gun.player.use
execute if items entity @s weapon.mainhand * run return 0

tag @s add 42.tag.src.this
execute as @e[type=item,distance=..5,tag=!42.tag.src.gun.scanned_item_entity] if items entity @s contents *[custom_data~{42components:{src:{gun:{}}}}] at @s run function 42:src/gun/test_dropped_gun

execute unless entity @e[type=item,distance=..10,tag=42.tag.src.gun.entity_is_gun] run return run tag @s remove 42.tag.src.this

tag @e[limit=1,type=item,sort=nearest,distance=..10,tag=42.tag.src.gun.entity_is_gun] add 42.tag.src.this_entity
item replace entity @s weapon.mainhand from entity @e[limit=1,type=item,sort=nearest,distance=..10,tag=42.tag.src.this_entity] contents
kill @e[limit=1,type=item,sort=nearest,distance=..10,tag=42.tag.src.this_entity]
tag @e[type=item,distance=..10] remove 42.tag.src.gun.entity_is_gun
tag @s remove 42.tag.src.this

function 42:src/gun/reload
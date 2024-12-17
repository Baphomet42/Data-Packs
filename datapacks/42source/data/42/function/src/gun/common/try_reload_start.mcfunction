tag @e[limit=1,type=item,sort=nearest,distance=..10,tag=42.tag.src.gun.entity_is_gun] add 42.tag.src.this_entity
item replace entity @s weapon.mainhand from entity @e[limit=1,type=item,sort=nearest,distance=..10,tag=42.tag.src.this_entity] contents
kill @e[limit=1,type=item,sort=nearest,distance=..10,tag=42.tag.src.this_entity]
tag @e[type=item,distance=..10] remove 42.tag.src.gun.entity_is_gun
function 42:src/gun/common/reload
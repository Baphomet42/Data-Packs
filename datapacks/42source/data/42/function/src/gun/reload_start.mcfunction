execute if items entity @s weapon.mainhand *[custom_data~{42components:{src:{gun:{ammo:{current:{inverse:0}}}}}}] run return 0
execute if score @s 42.obj.src.gun.reload_time matches 1.. run return 0

attribute @s movement_speed modifier add 42:src/gun/reload_speed -.25 add_multiplied_total

summon item_display ~ ~ ~ {Tags:["42.tag.src.gun.temp_display"],view_range:0f,UUID:[I;1701124424,-1002877333,-1756765033,1017721686]}
item replace entity 65651948-c439-4e6b-9749-e4973ca93356 contents from entity @s weapon.mainhand
data modify storage 42:src temp_reload_gun.components set from entity 65651948-c439-4e6b-9749-e4973ca93356 item.components

function 42:src/gun/enum/reload_start_sound
execute store result score @s 42.obj.src.gun.reload_time run data get storage 42:src temp_reload_gun.components.minecraft:custom_data.42components.src.gun.reload_time

kill 65651948-c439-4e6b-9749-e4973ca93356
data remove storage 42:src temp_reload_gun
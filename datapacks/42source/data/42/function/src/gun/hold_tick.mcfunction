summon item_display ~ ~ ~ {Tags:["42.tag.src.gun.temp_display"],view_range:0f,UUID:[I;-995813034,-2143727950,-1473643892,-1843454966]}
item replace entity c4a51956-8039-4eb2-a829-fa8c921f1c0a contents from entity @s weapon.mainhand
data modify storage 42:src temp_gun.components set from entity c4a51956-8039-4eb2-a829-fa8c921f1c0a item.components

function 42:src/gun/hold_tick_action

kill c4a51956-8039-4eb2-a829-fa8c921f1c0a
data remove storage 42:src temp_gun
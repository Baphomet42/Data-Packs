tag @s remove 42.tag.src.gun.player.use

summon item_display ~ ~ ~ {Tags:["42.tag.src.gun.temp_display"],view_range:0f,UUID:[I;-995813034,-2143727950,-1473643892,-1843454966]}
item replace entity c4a51956-8039-4eb2-a829-fa8c921f1c0a contents from entity @s weapon.mainhand
data modify storage 42:src temp.components set from entity c4a51956-8039-4eb2-a829-fa8c921f1c0a item.components

execute store result score #42.var.src.temp 42.obj.src.temp run data get storage 42:src temp.components.minecraft:custom_data.42components.src.gun.cooldown.current.time
scoreboard players remove #42.var.src.temp 42.obj.src.temp 1

execute unless score #42.var.src.temp 42.obj.src.temp matches 1.. run data remove storage 42:src temp.components.minecraft:custom_data.42components.src.gun.cooldown.current
execute if score #42.var.src.temp 42.obj.src.temp matches 1.. store result storage 42:src temp.components.minecraft:custom_data.42components.src.gun.cooldown.current.time int 1 run scoreboard players get #42.var.src.temp 42.obj.src.temp

data modify entity c4a51956-8039-4eb2-a829-fa8c921f1c0a item.components set from storage 42:src temp.components
item replace entity @s weapon.mainhand from entity c4a51956-8039-4eb2-a829-fa8c921f1c0a contents

kill c4a51956-8039-4eb2-a829-fa8c921f1c0a
data remove storage 42:src temp
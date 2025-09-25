execute unless entity @s[type=mannequin] run return fail
data remove storage 42:posers temp

execute store result storage 42:posers temp.dy double .0009 run attribute @s scale get 1000
execute at @s run function 42:posers/mannequin/spawner/drop_item_macro with storage 42:posers temp
execute at @s run playsound minecraft:entity.item.pickup block @a ~ ~ ~ .5

data modify storage 42:posers temp.item.Motion set value [0d,0d,0d]
execute store result storage 42:posers temp.item.Motion[0] double .001 run random value -100..100
execute store result storage 42:posers temp.item.Motion[1] double .001 run random value 0..100
execute store result storage 42:posers temp.item.Motion[2] double .001 run random value -100..100

data modify storage 42:posers temp.item.Item set value {id:"minecraft:player_head",components:{"minecraft:profile":{}}}
data modify storage 42:posers temp.item.Item.components.minecraft:profile set from entity @s profile

data modify entity @e[type=item,tag=42.tag.posers.new_spawn,limit=1,x=0] {} merge from storage 42:posers temp.item

data remove storage 42:posers temp
tag @e remove 42.tag.posers.new_spawn
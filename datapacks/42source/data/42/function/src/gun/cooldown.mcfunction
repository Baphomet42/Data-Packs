execute store result score #42.var.src.temp.t1 42.obj.src.temp run data get storage 42:src temp_gun.components.minecraft:custom_data.42components.src.gun.cooldown.current.gametime
execute store result score #42.var.src.temp.t2 42.obj.src.temp run time query gametime

execute store result storage 42:src temp_gun.components.minecraft:custom_data.42components.src.gun.cooldown.current.last_tick int 1 run scoreboard players get #42.var.src.temp.t2 42.obj.src.temp
execute if score #42.var.src.temp.t2 42.obj.src.temp >= #42.var.src.temp.t1 42.obj.src.temp run data remove storage 42:src temp_gun.components.minecraft:custom_data.42components.src.gun.cooldown.current

data modify entity c4a51956-8039-4eb2-a829-fa8c921f1c0a item.components set from storage 42:src temp_gun.components
item replace entity @s weapon.mainhand from entity c4a51956-8039-4eb2-a829-fa8c921f1c0a contents
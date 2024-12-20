function 42:src/gun/end_equip_instance

scoreboard players add #42.var.src.gun.equip_instance 42.obj.src.gun.equip_instance 1
scoreboard players operation @s 42.obj.src.gun.equip_instance = #42.var.src.gun.equip_instance 42.obj.src.gun.equip_instance

execute store result storage 42:src temp_gun.components.minecraft:custom_data.42components.src.gun.equip_instance int 1 run scoreboard players get @s 42.obj.src.gun.equip_instance

# update cooldown

# get gametime
execute store result score #42.var.src.temp.t1 42.obj.src.temp run time query gametime

# calculate ticks until gun cooldown is done
scoreboard players operation #42.var.src.temp.t2 42.obj.src.temp = #42.var.src.temp.t1 42.obj.src.temp
execute if data storage 42:src temp_gun.components.minecraft:custom_data.42components.src.gun.cooldown.cool_until store result score #42.var.src.temp.t2 42.obj.src.temp run data get storage 42:src temp_gun.components.minecraft:custom_data.42components.src.gun.cooldown.cool_until
scoreboard players operation #42.var.src.temp.t2 42.obj.src.temp -= #42.var.src.temp.t1 42.obj.src.temp

# set cooldown to swap cooldown
execute store result score @s 42.obj.src.gun.cooldown_time run data get storage 42:src data.gun.default_data.gun.cooldown.on_swap
execute if data storage 42:src temp_gun.components.minecraft:custom_data.42components.src.gun.cooldown.on_swap store result score @s 42.obj.src.gun.cooldown_time run data get storage 42:src temp_gun.components.minecraft:custom_data.42components.src.gun.cooldown.on_swap
# set player cooldown to max of swap cooldown and existing gun cooldown
scoreboard players operation @s 42.obj.src.gun.cooldown_time > #42.var.src.temp.t2 42.obj.src.temp

# cooldown setup
execute if score @s 42.obj.src.gun.cooldown_time matches 1.. run tag @s add 42.tag.src.gun.player.swap_cooldown

# calculate new cool_until time
scoreboard players operation #42.var.src.temp.t1 42.obj.src.temp += @s 42.obj.src.gun.cooldown_time
execute store result storage 42:src temp_gun.components.minecraft:custom_data.42components.src.gun.cooldown.cool_until int 1 run scoreboard players get #42.var.src.temp.t1 42.obj.src.temp

# modify item

data modify entity c4a51956-8039-4eb2-a829-fa8c921f1c0a item.components set from storage 42:src temp_gun.components
item replace entity @s weapon.mainhand from entity c4a51956-8039-4eb2-a829-fa8c921f1c0a contents
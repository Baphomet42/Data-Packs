execute unless score @s 42.obj.src.gun.equip_instance matches 1.. run return run function 42:src/gun/new_instance
execute store result score #42.var.src.temp.id 42.obj.src.temp run data get storage 42:src temp_gun.components.minecraft:custom_data.42components.src.gun.equip_instance
execute unless score @s 42.obj.src.gun.equip_instance = #42.var.src.temp.id 42.obj.src.temp run return run function 42:src/gun/new_instance

execute if items entity @s weapon.mainhand *[custom_data~{42components:{src:{gun:{cooldown:{current:{}}}}}}] run return run function 42:src/gun/cooldown
execute if score @s 42.obj.src.gun.reload_time matches 1.. run return run function 42:src/gun/reload_tick

execute if entity @s[tag=42.tag.src.gun.player.use] unless items entity @s weapon.mainhand *[custom_data~{42components:{src:{gun:{flags:{auto:{}}}}}}] run function 42:src/gun/try_shoot
execute if score @s 42.obj.src.gun.use_time matches 2 if items entity @s weapon.mainhand *[custom_data~{42components:{src:{gun:{flags:{auto:{}}}}}}] run function 42:src/gun/try_shoot

execute if score @s 42.obj.src.gun.reload_time matches ..-1 run return run function 42:src/gun/reload_delay
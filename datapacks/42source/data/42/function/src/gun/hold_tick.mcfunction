tag @s add 42.tag.src.gun.player.is_holding

execute if items entity @s weapon.mainhand *[custom_data~{42components:{src:{gun:{cooldown:{current:{}}}}}}] run return run function 42:src/gun/cooldown

execute if entity @s[tag=42.tag.src.gun.player.use] unless items entity @s weapon.mainhand *[custom_data~{42components:{src:{gun:{auto:{}}}}}] run function 42:src/gun/try_shoot
execute if score @s 42.obj.src.gun.use_time matches 2 if items entity @s weapon.mainhand *[custom_data~{42components:{src:{gun:{auto:{}}}}}] run function 42:src/gun/try_shoot

tag @s remove 42.tag.src.gun.player.use
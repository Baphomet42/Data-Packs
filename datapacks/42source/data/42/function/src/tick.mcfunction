# gun
execute as @a if items entity @s weapon.mainhand *[custom_data~{42components:{src:{gun:{}}}}] at @s run function 42:src/gun/hold_tick
execute as @a[tag=42.tag.src.gun.player.is_holding] unless items entity @s weapon.mainhand *[custom_data~{42components:{src:{gun:{}}}}] at @s run function 42:src/gun/stop_holding
scoreboard players remove @a[scores={42.obj.src.gun.use_time=1..}] 42.obj.src.gun.use_time 1
execute as @e[type=item_display,tag=42.tag.src.gun.bullet.marker] at @s run function 42:src/gun/bullet/tick

# src
schedule function 42:src/tick 1t replace
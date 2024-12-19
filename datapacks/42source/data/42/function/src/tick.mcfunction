# gun
execute as @a[predicate=42:src/gun/in_mainhand] at @s run function 42:src/gun/hold_tick
execute as @a[scores={42.obj.src.gun.equip_instance=1..},predicate=!42:src/gun/in_mainhand] at @s run function 42:src/gun/stop_holding
scoreboard players remove @a[scores={42.obj.src.gun.use_time=1..}] 42.obj.src.gun.use_time 1
tag @a remove 42.tag.src.gun.player.use
execute as @e[type=item_display,tag=42.tag.src.gun.bullet.marker] at @s run function 42:src/gun/bullet/tick

# src
schedule function 42:src/tick 1t replace
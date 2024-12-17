execute as @a if items entity @s weapon.mainhand *[custom_data~{42components:{src:{gun:{}}}}] at @s run function 42:src/gun/common/hold_gun_tick
scoreboard players reset @a 42.obj.src.wfoas
execute as @a[tag=42.tag.src.player.hold_gun] unless items entity @s weapon.mainhand *[custom_data~{42components:{src:{gun:{}}}}] at @s run function 42:src/gun/common/try_reload

execute as @e[type=item_display,tag=42.tag.src.gun.bullet.marker] at @s run function 42:src/gun/common/bullet/tick

schedule function 42:src/tick 1t replace
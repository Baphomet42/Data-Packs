execute unless score @s 42.obj.src.gun.reload_time matches ..-1 run function 42:src/gun/enum/sound/shoot_fail
execute if score @s[tag=42.tag.src.gun.player.use] 42.obj.src.gun.reload_time matches ..-1 run function 42:src/gun/enum/sound/shoot_fail
execute unless score @s 42.obj.src.gun.reload_time matches ..-1 run scoreboard players set @s 42.obj.src.gun.reload_time -15
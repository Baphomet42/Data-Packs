advancement revoke @s only 42:src/gun/use

execute unless score @s 42.obj.src.gun.use_time matches 1.. run tag @s add 42.tag.src.gun.player.use
scoreboard players set @s 42.obj.src.gun.use_time 2
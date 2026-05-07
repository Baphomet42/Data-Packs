tag @e remove 42.tag.portal.turret.target
tag @e remove 42.tag.portal.turret.target2
tag @e remove 42.tag.portal.turret.current
tag @e remove 42.tag.portal.turret.this
tag @s add 42.tag.portal.turret.this

tag @a[distance=..35,gamemode=!spectator] add 42.tag.portal.turret.target
tag @e[distance=..35,type=villager,tag=!42.tag.tech] add 42.tag.portal.turret.target
tag @e[tag=42.tag.portal.turret.target] add 42.tag.portal.turret.target2

execute store result score @s 42.obj.portal.xrot1 run data get entity @e[tag=42.tag.portal.turret.eye,tag=42.tag.portal.id,limit=1] Rotation[0] 1000
execute store result score @s 42.obj.portal.yrot1 run data get entity @e[tag=42.tag.portal.turret.eye,tag=42.tag.portal.id,limit=1] Rotation[1] 1000
scoreboard players add @s 42.obj.portal.xrot1 720000
scoreboard players add @s 42.obj.portal.yrot1 720000
scoreboard players set @s 42.obj.portal.temp 360000
scoreboard players operation @s 42.obj.portal.xrot1 %= @s 42.obj.portal.temp
scoreboard players operation @s 42.obj.portal.yrot1 %= @s 42.obj.portal.temp

scoreboard players set @s 42.obj.portal.var.z 50
execute if entity @e[tag=42.tag.portal.turret.target] at @s run function 42:portal/cube/turret/target/find_loop
tag @e remove 42.tag.portal.turret.target
tag @e remove 42.tag.portal.turret.target2
tag @e remove 42.tag.portal.turret.target_current

execute if entity @e[tag=42.tag.portal.turret.current] at @s run function 42:portal/cube/turret/target/new_laser_bullet
tag @e remove 42.tag.portal.turret.current
tag @e remove 42.tag.portal.turret.this
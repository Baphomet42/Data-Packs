scoreboard players set #42.var.portal.dummy 42.obj.portal.vars 0
execute unless score @s 42.obj.portal.var.a matches 1.. unless score @s 42.obj.portal.var.b matches 1.. run scoreboard players set #42.var.portal.dummy 42.obj.portal.vars 1

scoreboard players set #42.var.portal.dummy2 42.obj.portal.vars 0
execute if data storage 42:portal temp.current_unload_lvl store result score #42.var.portal.dummy2 42.obj.portal.vars run data get storage 42:portal temp.current_unload_lvl

scoreboard players operation #42.var.portal.dummy 42.obj.portal.var.a = @s 42.obj.portal.var.a
scoreboard players operation #42.var.portal.dummy 42.obj.portal.var.b = @s 42.obj.portal.var.b

execute as @e[scores={42.obj.portal.lvl=1..},tag=!42.tag.portal.elevator.main,tag=!42.tag.portal.zone.mode.load] if score @s 42.obj.portal.lvl = #42.var.portal.dummy 42.obj.portal.var.a unless score @s 42.obj.portal.lvl = #42.var.portal.dummy2 42.obj.portal.vars run scoreboard players set #42.var.portal.dummy 42.obj.portal.vars 1
execute as @e[scores={42.obj.portal.lvl=1..},tag=!42.tag.portal.elevator.main,tag=!42.tag.portal.zone.mode.load] unless entity @s[tag=42.tag.portal.zone,scores={42.obj.portal.var.x=0}] if score @s 42.obj.portal.lvl = #42.var.portal.dummy 42.obj.portal.var.b unless score @s 42.obj.portal.lvl = #42.var.portal.dummy2 42.obj.portal.vars run scoreboard players set #42.var.portal.dummy 42.obj.portal.vars 1

scoreboard players set #42.var.portal.dummy3 42.obj.portal.vars 0
execute if data storage 42:portal temp.current_load_lvl store result score #42.var.portal.dummy3 42.obj.portal.vars run data get storage 42:portal temp.current_load_lvl
execute if score #42.var.portal.dummy3 42.obj.portal.vars matches 1.. if score #42.var.portal.dummy3 42.obj.portal.vars = #42.var.portal.dummy 42.obj.portal.var.a run scoreboard players set #42.var.portal.dummy 42.obj.portal.vars 1
execute if score #42.var.portal.dummy3 42.obj.portal.vars matches 1.. if score #42.var.portal.dummy3 42.obj.portal.vars = #42.var.portal.dummy 42.obj.portal.var.b run scoreboard players set #42.var.portal.dummy 42.obj.portal.vars 1

tag @s remove 42.tag.portal.elevator.hide_when_off
execute if score #42.var.portal.dummy 42.obj.portal.vars matches 1 if entity @s[tag=!42.tag.portal.elevator.show] run function 42:portal/elevator/show
execute if score #42.var.portal.dummy 42.obj.portal.vars matches 0 run tag @s add 42.tag.portal.elevator.hide_when_off
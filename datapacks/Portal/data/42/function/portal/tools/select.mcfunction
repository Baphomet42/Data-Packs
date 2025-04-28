tag @e remove 42.tag.portal.temp
tag @e remove 42.tag.portal.temp1
tag @e remove 42.tag.portal.temp2
tag @e remove 42.tag.portal.sel_p
tag @p add 42.tag.portal.sel_p

tag @e[tag=42.tag.portal.cube.tp,distance=..2.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.launch,distance=..2.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.btn,distance=..2.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.pedestal,distance=..2.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.door,distance=..2.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.dropper,distance=..2.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.portal,distance=..2.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.pellet.emitter,distance=..2.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.pellet.catcher,distance=..2.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.pellet,distance=..2.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.laser.emitter,distance=..2.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.laser.catcher,distance=..2.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.elevator,distance=..3.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.elevator.start,distance=..3.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.elevator.selgroup,distance=..3.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.wire,distance=..1.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.portal.spawner,distance=..2.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.zone,distance=..2.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.cube.spawner,distance=..1.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.pellet.spawner,distance=..1.5] add 42.tag.portal.temp
tag @e[tag=42.tag.portal.grill,distance=..2.5] add 42.tag.portal.temp

tag @e[tag=42.tag.portal.temp,limit=1,sort=nearest,tag=!42.tag.portal.portal.no_sel] add 42.tag.portal.temp2
tag @e remove 42.tag.portal.temp

title @p[tag=42.tag.portal.sel_p] actionbar ""
execute as @e[tag=42.tag.portal.temp2] if score @s 42.obj.portal.sel = @e[tag=42.tag.portal.sel_p,limit=1] 42.obj.portal.sel run tag @s add 42.tag.portal.temp1
tag @e[tag=42.tag.portal.temp1] remove 42.tag.portal.temp2
scoreboard players set @e[tag=42.tag.portal.sel_p,limit=1] 42.obj.portal.sel 0
execute if entity @e[tag=42.tag.portal.temp2] run scoreboard players add #42.var.portal.dummy 42.obj.portal.sel 1
execute if entity @e[tag=42.tag.portal.temp2] run playsound minecraft:block.note_block.pling block @a ~ ~ ~ 2 1.4
execute if entity @e[tag=42.tag.portal.temp2] run scoreboard players operation @e[tag=42.tag.portal.temp2] 42.obj.portal.sel = #42.var.portal.dummy 42.obj.portal.sel
execute if entity @e[tag=42.tag.portal.temp2] run scoreboard players operation @e[tag=42.tag.portal.sel_p,limit=1] 42.obj.portal.sel = #42.var.portal.dummy 42.obj.portal.sel
execute if entity @e[tag=42.tag.portal.temp1] run scoreboard players operation @e[tag=42.tag.portal.sel_p,limit=1] 42.obj.portal.sel = @e[tag=42.tag.portal.temp1,limit=1] 42.obj.portal.sel
execute as @e[tag=42.tag.portal.temp2,tag=!42.tag.portal.selgroup] at @s run function 42:portal/tools/sel_new
execute as @e[tag=42.tag.portal.temp1,tag=!42.tag.portal.selgroup] at @s run function 42:portal/tools/sel_new
execute as @e[tag=42.tag.portal.temp2,tag=42.tag.portal.selgroup] at @s run function 42:portal/tools/sel_group
execute as @e[tag=42.tag.portal.temp1,tag=42.tag.portal.selgroup] at @s run function 42:portal/tools/sel_group

tag @e remove 42.tag.portal.temp1
tag @e remove 42.tag.portal.temp2
tag @e remove 42.tag.portal.sel_p
kill @s[type=area_effect_cloud]
execute if score #42.var.portal.dummy 42.obj.portal.sel matches 2000000000.. run tellraw @a {text:"42datapack error (3): [sel] overflow warning",color:"red"}
scoreboard players operation #42.var.portal.dummy 42.obj.portal.temp = @s 42.obj.portal.var.y
execute unless score #42.var.portal.dummy 42.obj.portal.temp matches 0.. run scoreboard players operation #42.var.portal.dummy 42.obj.portal.temp *= #42.var.gen.const.neg_1 42.obj.portal.vars
execute if score #42.var.portal.dummy 42.obj.portal.temp matches ..100 run scoreboard players set #42.var.portal.dummy 42.obj.portal.temp 100
execute if score #42.var.portal.dummy 42.obj.portal.temp matches 3000.. run scoreboard players set #42.var.portal.dummy 42.obj.portal.temp 3000
execute if entity @e[tag=42.tag.portal.portal.tp2,scores={42.obj.portal.var.y=0,42.obj.portal.var.x=0}] run function 42:portal/portal/motrot/out/s
execute if entity @e[tag=42.tag.portal.portal.tp2,scores={42.obj.portal.var.y=0,42.obj.portal.var.x=1}] run function 42:portal/portal/motrot/out/w
execute if entity @e[tag=42.tag.portal.portal.tp2,scores={42.obj.portal.var.y=0,42.obj.portal.var.x=2}] run function 42:portal/portal/motrot/out/n
execute if entity @e[tag=42.tag.portal.portal.tp2,scores={42.obj.portal.var.y=0,42.obj.portal.var.x=3}] run function 42:portal/portal/motrot/out/e
execute if entity @e[tag=42.tag.portal.portal.tp2,scores={42.obj.portal.var.y=-2}] run function 42:portal/portal/motrot/out/f
execute if entity @e[tag=42.tag.portal.portal.tp2,scores={42.obj.portal.var.y=2}] run function 42:portal/portal/motrot/out/c
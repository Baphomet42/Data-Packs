tag @e remove 42.tag.portal.portal.tp
tag @e remove 42.tag.portal.portal.tp_this
tag @s add 42.tag.portal.portal.tp_this

execute if score @s 42.obj.portal.var.y matches 0 positioned ~-.5 ~-.5 ~-.5 positioned ^ ^-1 ^ run tag @e[dx=0,dy=2,dz=0] add 42.tag.portal.portal.tp
execute unless score @s 42.obj.portal.var.y matches 0 positioned ^ ^-.5 ^ align xyz positioned ~ ~ ~ run tag @e[dx=0,dy=0,dz=0] add 42.tag.portal.portal.tp
execute unless score @s 42.obj.portal.var.y matches 0 positioned ^ ^.5 ^ align xyz positioned ~ ~ ~ run tag @e[dx=0,dy=0,dz=0] add 42.tag.portal.portal.tp
execute unless score @s 42.obj.portal.var.y matches 0 positioned ^ ^1.5 ^ align xyz positioned ~ ~ ~ run tag @e[dx=0,dy=0,dz=0] add 42.tag.portal.portal.tp

scoreboard players operation #42.var.portal.dummy 42.obj.portal.temp = @s 42.obj.portal.var.y
execute store result score #42.var.portal.dummy2 42.obj.portal.temp run time query gametime
scoreboard players operation #42.var.portal.dummy3 42.obj.portal.temp = #42.var.portal.dummy2 42.obj.portal.temp
scoreboard players remove #42.var.portal.dummy3 42.obj.portal.temp 10
execute as @e[tag=42.tag.portal.portal.tp] unless function 42:portal/portal/tp/tick_try_tp_verify run tag @s remove 42.tag.portal.portal.tp

execute if entity @e[tag=42.tag.portal.portal.tp,limit=1] run function 42:portal/portal/tp/tick_tp
tag @s remove 42.tag.portal.portal.tp_this
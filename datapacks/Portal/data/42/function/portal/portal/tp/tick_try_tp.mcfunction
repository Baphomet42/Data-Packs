tag @e remove 42.tag.portal.portal.tp
tag @e remove 42.tag.portal.portal.tp_this
tag @s add 42.tag.portal.portal.tp_this

execute if score @s 42.obj.portal.var.y matches 0 positioned ~-.5 ~-.5 ~-.5 positioned ^ ^-1 ^ run tag @e[dx=0,dy=2,dz=0] add 42.tag.portal.portal.tp
execute unless score @s 42.obj.portal.var.y matches 0 positioned ^ ^-.5 ^ align xyz positioned ~ ~ ~ run tag @e[dx=0,dy=0,dz=0] add 42.tag.portal.portal.tp
execute unless score @s 42.obj.portal.var.y matches 0 positioned ^ ^.5 ^ align xyz positioned ~ ~ ~ run tag @e[dx=0,dy=0,dz=0] add 42.tag.portal.portal.tp
execute unless score @s 42.obj.portal.var.y matches 0 positioned ^ ^1.5 ^ align xyz positioned ~ ~ ~ run tag @e[dx=0,dy=0,dz=0] add 42.tag.portal.portal.tp

execute if score @s 42.obj.portal.var.y matches 0 run tag @e remove 42.tag.portal.portal.tp_inblock
execute if score @s 42.obj.portal.var.y matches 0 as @e[tag=42.tag.portal.portal.tp] at @s align xyz positioned ~.5 ~1 ~.5 if entity @e[tag=42.tag.portal.portal.tp_this,distance=...25] run tag @s add 42.tag.portal.portal.tp_inblock
execute if score @s 42.obj.portal.var.y matches 0 as @e[tag=42.tag.portal.portal.tp,tag=!42.tag.portal.portal.tp_inblock] at @s align xyz positioned ~.5 ~ ~.5 if entity @e[tag=42.tag.portal.portal.tp_this,distance=...25] run tag @s add 42.tag.portal.portal.tp_inblock
execute if score @s 42.obj.portal.var.y matches 0 as @e[tag=42.tag.portal.portal.tp,tag=!42.tag.portal.portal.tp_inblock] at @s align xyz positioned ~.5 ~-1 ~.5 if entity @e[tag=42.tag.portal.portal.tp_this,distance=...25] run tag @s add 42.tag.portal.portal.tp_inblock
execute if score @s 42.obj.portal.var.y matches 0 run tag @e[tag=!42.tag.portal.portal.tp_inblock] remove 42.tag.portal.portal.tp
execute if score @s 42.obj.portal.var.y matches 0 run tag @e remove 42.tag.portal.portal.tp_inblock
execute if score @s 42.obj.portal.var.y matches -2 positioned ~-3 ~ ~-3 positioned ~ ~-.5 ~ as @e[tag=42.tag.portal.portal.tp] unless entity @s[dx=6,dy=0,dz=6] run tag @s remove 42.tag.portal.portal.tp
execute if score @s 42.obj.portal.var.y matches 2 positioned ~-3 ~ ~-3 positioned ~ ~-.25 ~ as @e[tag=42.tag.portal.portal.tp] unless entity @s[dx=6,dy=0,dz=6] run tag @s remove 42.tag.portal.portal.tp

execute as @e[tag=42.tag.portal.portal.tp] if entity @s[tag=42.tag.portal.cube.tp,tag=!42.tag.portal.motion.tp] run tag @s remove 42.tag.portal.portal.tp
execute as @e[tag=42.tag.portal.portal.tp] if entity @s[tag=42.tag.portal.cube.col] run tag @s remove 42.tag.portal.portal.tp
execute as @e[tag=42.tag.portal.portal.tp] if entity @s[type=#42:portal/portal_exempt] unless entity @s[type=player,tag=!42.tag.portal.motion,gamemode=!spectator] unless entity @s[tag=42.tag.portal.cube.hit,tag=!42.tag.portal.cube.held,tag=!42.tag.portal.motion.tp] unless entity @s[tag=42.tag.portal.motion.tp] unless entity @s[tag=42.tag.portal.pellet,tag=!42.tag.portal.pellet.on] run tag @s remove 42.tag.portal.portal.tp

execute if entity @e[tag=42.tag.portal.portal.tp] run scoreboard players set @e[tag=42.tag.portal.portal,tag=42.tag.portal.portal.pair] 42.obj.portal.cool 10
execute if entity @e[tag=42.tag.portal.portal.tp] run function 42:portal/portal/tp/tick_tp
tag @s remove 42.tag.portal.portal.tp_this
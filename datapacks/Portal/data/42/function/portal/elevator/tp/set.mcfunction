function 42:portal/elevator/tp/remove
tag @e remove 42.tag.portal.elevator.pair
execute as @p[tag=42.tag.portal.selected] at @s run tag @e[tag=42.tag.portal.elevator.start,limit=1,sort=nearest,tag=!42.tag.portal.id,distance=..4] add 42.tag.portal.elevator.pair
execute if entity @e[tag=42.tag.portal.elevator.pair] run tag @s add 42.tag.portal.elevator.tp
execute store result score @s 42.obj.portal.var.u run data get entity @e[tag=42.tag.portal.elevator.pair,limit=1] Pos[0] 1000
execute store result score @s 42.obj.portal.var.v run data get entity @e[tag=42.tag.portal.elevator.pair,limit=1] Pos[1] 1000
execute store result score @s 42.obj.portal.var.w run data get entity @e[tag=42.tag.portal.elevator.pair,limit=1] Pos[2] 1000
scoreboard players operation @s 42.obj.portal.xrot2 = @e[tag=42.tag.portal.elevator.pair,limit=1] 42.obj.portal.id

scoreboard players operation @s 42.obj.portal.yrot2 = @s 42.obj.portal.yrot1
scoreboard players operation @s 42.obj.portal.yrot2 -= @e[tag=42.tag.portal.elevator.pair,limit=1] 42.obj.portal.yrot1
execute if score @s 42.obj.portal.yrot2 matches ..-1 run scoreboard players add @s 42.obj.portal.yrot2 4

execute as @e[tag=42.tag.portal.elevator.pair] at @s run particle flash{color:[1,1,1,1]} ~ ~1.5 ~
execute as @e[tag=42.tag.portal.elevator.pair] at @s run playsound block.note_block.pling block @a ~ ~ ~ 1 1.25
execute unless entity @e[tag=42.tag.portal.elevator.pair] run title @p[tag=42.tag.portal.selected] title ""
execute unless entity @e[tag=42.tag.portal.elevator.pair] run title @p[tag=42.tag.portal.selected] subtitle {text:"No elevator in range",color:"red"}
tag @e remove 42.tag.portal.elevator.pair
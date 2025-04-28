particle large_smoke ~ ~1 ~ .25 .5 .25 0 1 force

execute if score @s 42.obj.portal.var.c matches 2 run playsound block.fire.ambient hostile @a ~ ~ ~ 1
execute if score @s 42.obj.portal.var.c matches 12 run playsound block.fire.ambient hostile @a ~ ~ ~ 1
execute if score @s 42.obj.portal.var.c matches 22 run playsound block.fire.ambient hostile @a ~ ~ ~ 1
execute if score @s 42.obj.portal.var.c matches 32 run playsound block.fire.ambient hostile @a ~ ~ ~ 1
execute if score @s 42.obj.portal.var.c matches 42 run playsound block.fire.ambient hostile @a ~ ~ ~ 1
execute if score @s 42.obj.portal.var.c matches 52 run playsound block.fire.ambient hostile @a ~ ~ ~ 1

scoreboard players add @s[scores={42.obj.portal.var.c=30..}] 42.obj.portal.var.c 1
scoreboard players remove @s[scores={42.obj.portal.var.c=1..29}] 42.obj.portal.var.c 1

execute if score @s 42.obj.portal.var.c matches 31 run data modify entity @s HasVisualFire set value true

execute unless score @s 42.obj.portal.var.c matches 60.. run return 1
particle lava ~ ~ ~ .5 .5 .5 1 15 force
particle explosion ~ ~ ~ 0 0 0 1 1 force
playsound entity.generic.explode hostile @a ~ ~ ~ 1 1
function 42:portal/cube/fizzle_silent
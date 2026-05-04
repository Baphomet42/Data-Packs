#tellraw @a ["Portal motion: [",{score:{name:"@s",objective:"42.obj.portal.motion.x"}},", ",{score:{name:"@s",objective:"42.obj.portal.motion.y"}},", ",{score:{name:"@s",objective:"42.obj.portal.motion.z"}},"]"]

execute at @e[tag=42.tag.portal.portal.tp2,scores={42.obj.portal.var.z=0}] positioned ^ ^-.8125 ^.6 rotated as @s run tp @s ~ ~ ~ ~180 ~
execute at @e[tag=42.tag.portal.portal.tp2,scores={42.obj.portal.var.z=1}] positioned ^ ^-.8125 ^.6 rotated as @s run tp @s ~ ~ ~ ~-90 ~
execute at @e[tag=42.tag.portal.portal.tp2,scores={42.obj.portal.var.z=2}] positioned ^ ^-.8125 ^.6 rotated as @s run tp @s ~ ~ ~ ~ ~
execute at @e[tag=42.tag.portal.portal.tp2,scores={42.obj.portal.var.z=3}] positioned ^ ^-.8125 ^.6 rotated as @s run tp @s ~ ~ ~ ~90 ~
execute at @e[tag=42.tag.portal.portal.tp2,scores={42.obj.portal.var.w=-2}] positioned ^ ^-.8125 ^.6 rotated as @s run tp @s ~ ~ ~ ~ ~-90
execute at @e[tag=42.tag.portal.portal.tp2,scores={42.obj.portal.var.w=2}] positioned ^ ^-.8125 ^.6 rotated as @s run tp @s ~ ~ ~ ~ ~90
execute at @e[tag=42.tag.portal.portal.tp2,scores={42.obj.portal.var.y=-2}] positioned ^ ^ ^1.6 rotated as @s run tp @s ~ ~ ~ ~ ~
execute at @e[tag=42.tag.portal.portal.tp2,scores={42.obj.portal.var.y=2}] positioned ^ ^ ^1.6 rotated as @s run tp @s ~ ~ ~ ~ ~
execute at @s run tp @s @s

execute if entity @e[tag=42.tag.portal.portal.tp1,scores={42.obj.portal.var.y=0,42.obj.portal.var.x=0}] run function 42:portal/portal/motrot/player/in/s
execute if entity @e[tag=42.tag.portal.portal.tp1,scores={42.obj.portal.var.y=0,42.obj.portal.var.x=1}] run function 42:portal/portal/motrot/player/in/w
execute if entity @e[tag=42.tag.portal.portal.tp1,scores={42.obj.portal.var.y=0,42.obj.portal.var.x=2}] run function 42:portal/portal/motrot/player/in/n
execute if entity @e[tag=42.tag.portal.portal.tp1,scores={42.obj.portal.var.y=0,42.obj.portal.var.x=3}] run function 42:portal/portal/motrot/player/in/e
execute if entity @e[tag=42.tag.portal.portal.tp1,scores={42.obj.portal.var.y=-2}] run function 42:portal/portal/motrot/player/in/f
execute if entity @e[tag=42.tag.portal.portal.tp1,scores={42.obj.portal.var.y=2}] run function 42:portal/portal/motrot/player/in/c
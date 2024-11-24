tag @e remove 42.tag.portal.id

execute as @e[distance=..34] store result score @s 42.obj.portal.temp run data get entity @s UUID[0]
scoreboard players operation @e[distance=..32] 42.obj.portal.temp -= @s 42.obj.portal.id
execute as @e[distance=..30,scores={42.obj.portal.temp=0}] run tag @s add 42.tag.portal.id
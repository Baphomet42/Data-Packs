tag @e remove 42.portal_id

execute as @e[distance=..34] store result score @s 42.portal_temp run data get entity @s UUID[0]
scoreboard players operation @e[distance=..32] 42.portal_temp -= @s 42.portal_id
execute as @e[distance=..30,scores={42.portal_temp=0}] run tag @s add 42.portal_id
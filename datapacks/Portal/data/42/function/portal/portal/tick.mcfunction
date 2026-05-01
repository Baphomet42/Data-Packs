function 42:portal/portal/tag_pair
execute if score @s 42.obj.portal.time matches 20 run function 42:portal/portal/tick20
execute if entity @e[tag=42.tag.portal.portal.a,tag=42.tag.portal.portal.pair] if entity @e[tag=42.tag.portal.portal.b,tag=42.tag.portal.portal.pair] run function 42:portal/portal/tp/tick_try_tp
tag @e remove 42.tag.portal.portal.pair

execute if entity @a[distance=..16] at @s run function 42:portal/portal/particle

scoreboard players add @s 42.obj.portal.time 1
execute if score @s 42.obj.portal.time matches 21 run scoreboard players set @s 42.obj.portal.time 0
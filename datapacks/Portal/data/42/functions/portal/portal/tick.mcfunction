execute if score @s 42.portal_cool matches 1.. run scoreboard players remove @s 42.portal_cool 1
function 42:portal/portal/tag_pair
execute if score @s 42.portal_time matches 20 run function 42:portal/portal/tick20
execute if entity @e[tag=42.portal_a,tag=42.portal_pair] if entity @e[tag=42.portal_b,tag=42.portal_pair] if score @s 42.portal_cool matches 0 run function 42:portal/portal/tick_try_tp
tag @e remove 42.portal_pair
#
execute if entity @a[distance=..16] at @s run function 42:portal/portal/particle
#
scoreboard players add @s 42.portal_time 1
execute if score @s 42.portal_time matches 21 run scoreboard players set @s 42.portal_time 0